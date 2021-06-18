local LT = LibStub("LibTourist-3.0");
local L = LibStub("AceLocale-3.0"):GetLocale("Titan", true)

-- Font Colors
TRZ_WHITE = HIGHLIGHT_FONT_COLOR_CODE;
TRZ_RED = RED_FONT_COLOR_CODE;
TRZ_ORANGE = "|cffff8020";
TRZ_YELLOW = "|cffffff20";
TRZ_GREEN = GREEN_FONT_COLOR_CODE;
TRZ_GRAY = GRAY_FONT_COLOR_CODE;
TRZ_NORMAL = NORMAL_FONT_COLOR_CODE;
TRZ_FONT_OFF = FONT_COLOR_CODE_CLOSE;

TRZ_INSTANCE_TEXT = "%s%s%s (%d+ " .. TRZ_TOOLTIP_TO .. " %d+)" .. TRZ_FONT_OFF;  -- Instance (35+ to 45+)
TRZ_INSTANCE_TEXT2 = "%s%s%s (%d+)" .. TRZ_FONT_OFF;  -- Instance (35+)
TRZ_INSTANCE_TEXT3 = "%s%s%s%s (%d+)" .. TRZ_FONT_OFF; -- Complex:Instance (35+)
TRZ_INSTANCE_TEXT4 = "%s%s%s%s (%d+ " .. TRZ_TOOLTIP_TO .. " %d+)" .. TRZ_FONT_OFF;  -- Complex:Instance (35+ to 45+)
TRZ_WORLDMAP_TEXT = "(%d-%d)" .. "\n\n" .. TRZ_FONT_OFF;

TRZ_MAX_ROWS = 29;

TRZ_ID =  "TRZ";

trz_tooltip_text = "";
trz_button_text = "";
trz_current_continent = "";
trz_current_zone = "";

-- Removes unique identifiers from new zones that have the same name as older zones.
local function TRZ_ZoneNameClean(zone)
	local continent = " %(" .. LT:GetContinent(zone) .. "%)"
	return gsub(zone, continent, "")
end

local function TRZ_RGBPercToHex(r, g, b)
	r = r <= 1 and r >= 0 and r or 0
	g = g <= 1 and g >= 0 and g or 0
	b = b <= 1 and b >= 0 and b or 0
	return "|cff" .. string.format("%02x%02x%02x", r*255, g*255, b*255);
end

function TRZ_Init()
	if (myAddOnsFrame_Register) then
		myAddOnsFrame_Register( {name="TitanRecZone",version=TRZ_VERSION,category=MYADDONS_CATEGORY_PLUGINS} );
	end
	
	TRZ_ToggleWorldMapText();
end

function TRZ_OnLoad(self)
	self.registry = {
		id = TRZ_ID,
		menuText = TRZ_MENU_TEXT, 
		buttonTextFunction = "TRZ_GetButtonText", 
		tooltipTitle = TRZ_TOOLTIP_TITLE,
		tooltipTextFunction = "TRZ_GetTooltipText", 
		icon = "Interface\\WorldMap\\UI-World-Icon.blp",
		iconWidth = 16,
		iconButtonWidth = 16,
		category="Information",
		version=TRZ_VERSION,
		savedVariables = {
            ShowIcon = 1,
			ShowCurInstance = 1,
			ShowInstance = 1,
			ShowBattleground = 1,
			ShowRaid = false,
			ShowArena = false,
			ShowFaction = false,
			ShowContinent = false,
			ShowLoc = 1,
			ShowMap = 1,
			ShowLower = false,
			ShowHigher = false,
			ShowColoredText = 1,
			ShowLabelText = 1,  -- Default to 1
		}
	};
	self:RegisterEvent("VARIABLES_LOADED");
	self:RegisterEvent("PLAYER_ENTERING_WORLD");
end

function TRZ_OnEvent(self, event, ...)
	if (event == "VARIABLES_LOADED") then
		TRZ_Init();
	elseif (event == "PLAYER_ENTERING_WORLD") then
		self:UnregisterEvent("PLAYER_ENTERING_WORLD");
		self:RegisterEvent("PLAYER_LEAVING_WORLD");
		self:RegisterEvent("ZONE_CHANGED");
		self:RegisterEvent("ZONE_CHANGED_INDOORS");
		self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
		self:RegisterEvent("PLAYER_LEVEL_UP");
		--TRZ_UpdateButtonText();
		TitanPanelButton_UpdateButton(TRZ_ID);
	elseif (event == "PLAYER_LEAVING_WORLD") then
		self:UnregisterEvent("PLAYER_LEAVING_WORLD");
		self:UnregisterEvent("ZONE_CHANGED");
		self:UnregisterEvent("ZONE_CHANGED_INDOORS");
		self:UnregisterEvent("ZONE_CHANGED_NEW_AREA");
		self:UnregisterEvent("PLAYER_LEVEL_UP");
		self:RegisterEvent("PLAYER_ENTERING_WORLD");
	else
		--TRZ_UpdateButtonText();
		TitanPanelButton_UpdateButton(TRZ_ID);
	end
end

function TRZ_GetButtonText(id)
	TRZ_UpdateButtonText();
	TRZ_ToggleWorldMapText();
	return TRZ_BUTTON_LABEL, trz_button_text;
end

function TRZ_GetTooltipText()
	TRZ_UpdateTooltipText();
	return trz_tooltip_text;	
end

function TitanPanelRightClickMenu_PrepareTRZMenu()
	TitanPanelRightClickMenu_AddTitle(TitanPlugins[TRZ_ID].menuText);	
	
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_CUR_INSTANCE, TRZ_ID, "ShowCurInstance");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_FACTION, TRZ_ID, "ShowFaction");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_CONTINENT, TRZ_ID, "ShowContinent");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_INSTANCE, TRZ_ID, "ShowInstance");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_BG, TRZ_ID, "ShowBattleground");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_RAID, TRZ_ID, "ShowRaid");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_ARENA, TRZ_ID, "ShowArena");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_LOC, TRZ_ID, "ShowLoc");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_LOWER, TRZ_ID, "ShowLower");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_HIGHER, TRZ_ID, "ShowHigher");
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_MAP_TEXT, TRZ_ID, "ShowMap");
	
	TitanPanelRightClickMenu_AddSpacer();
	TitanPanelRightClickMenu_AddToggleVar(TRZ_TOGGLE_ICON, TRZ_ID, "ShowIcon");
	TitanPanelRightClickMenu_AddToggleColoredText(TRZ_ID)
	TitanPanelRightClickMenu_AddToggleLabelText(TRZ_ID);

	TitanPanelRightClickMenu_AddSpacer();
	TitanPanelRightClickMenu_AddCommand(L["TITAN_PANEL_MENU_HIDE"], TRZ_ID, TITAN_PANEL_MENU_FUNC_HIDE);
end

-- end titan panel setup

function TRZ_GetColorRange(low, high)
	local playerLevel = UnitLevel("player");
	if (playerLevel < 58) then
		playerLevel = playerLevel + 1;
	end
	if (playerLevel <= (low-4)) then
		return TRZ_RED;
	elseif (playerLevel < low) then
		return TRZ_ORANGE;
	elseif (playerLevel <= high) then
		return TRZ_YELLOW;
	elseif (playerLevel < (high+5)) then
		return TRZ_GREEN;
	else
		return TRZ_GRAY;
	end
end

function TRZ_GetColor(zone)
	-- PlayerLevel <= low for zone - 4  == RED
	-- PlayerLevel <  low for zone      == ORANGE
	-- PlayerLevel <= high              == YELLOW
	-- PlayerLevel <  high + 5          == GREEN
	-- Otherwise                        == GRAY
	local low, high = LT:GetLevel(zone);
	local playerLevel = UnitLevel("player");
	if (playerLevel < 58) then
		playerLevel = playerLevel +1;
	end
	if (playerLevel <= (low-4)) then
		return TRZ_RED;
	elseif (playerLevel < low) then
		return TRZ_ORANGE;
	elseif (playerLevel <= high) then
		return TRZ_YELLOW;
	elseif (playerLevel < (high+5)) then
		return TRZ_GREEN;
	else
		return TRZ_GRAY;
	end
end

function TRZ_GetInstanceText(zone,colors)
	local instanceColor = TRZ_WHITE;
	if ( zone == nil ) then
		return "";
	end
	if ( LT:IsInstance(zone) == false) then
		return "";
	end
	if (colors) then
		instanceColor = TRZ_GetColor(zone);
	end
	local iType=LT:GetType(zone);
	local groupSize = LT:GetInstanceGroupSize(zone);
	local altGroupSize = LT:GetInstanceAltGroupSize(zone);
	local complex = LT:GetComplex(zone);
	if (iType ~= "Instance") then
		if ( complex == nil ) then
			return instanceColor .. TRZ_ZoneNameClean(zone) .. " " .. iType;
		else
			return instanceColor .. complex .. ":" .. TRZ_ZoneNameClean(zone) .. " " .. iType;
		end
	end
	if (groupSize > 5) then
		local rType=" RAID" .. groupSize;
		if (altGroupSize) then
			rType=" RAID" .. groupSize .. "/" .. altGroupSize;
		end
		if ( complex == nil ) then
			return instanceColor .. TRZ_ZoneNameClean(zone) .. rType;
		else
			return instanceColor .. complex .. ":" .. TRZ_ZoneNameClean(zone) .. rType;
		end
		
	end
	local low, high = LT:GetLevel(zone)
	if ( iType == "Instance" ) then
		iType = "";
	else
		iType = " " .. iType;
	end
	if (complex == nil) then
		if (low == high) then
			return format(TRZ_INSTANCE_TEXT2, instanceColor, TRZ_ZoneNameClean(zone), iType, low );
		end
		return format(TRZ_INSTANCE_TEXT, instanceColor, TRZ_ZoneNameClean(zone),
									iType,
									low, high );
	else
		complex = complex .. ":";
		if ( low == high) then
			return format(TRZ_INSTANCE_TEXT3, instanceColor, complex, TRZ_ZoneNameClean(zone), iType, low);
		end
		return format(TRZ_INSTANCE_TEXT4, instanceColor, complex, TRZ_ZoneNameClean(zone), iType, low, high);
	end
end

function TRZ_GetZoneText(zone,colors)
	local zoneColor = TRZ_WHITE;
	if ( zone == nil ) then
		return "";
	end
	if (colors) then
		zoneColor = TRZ_GetColor(zone);
	end
	local low, high = LT:GetLevel(zone);
	if ( low == 0 and high == 0) then
		return	zoneColor .. TRZ_ZoneNameClean(zone) .. TRZ_FONT_OFF;
	else
		return	zoneColor .. TRZ_ZoneNameClean(zone) .. " (" .. low .. "-" .. high .. ")" .. TRZ_FONT_OFF;
	end
end

function TRZ_GetFactionText(zone,colors)
	local factionColor = TRZ_WHITE;
	if ( zone == nil ) then
		return "";
	end
	if (colors) then
		if ( LT:IsContested(zone) == true ) then
			factionColor = TRZ_YELLOW;
		else
			factionColor = TRZ_GREEN;
		end
	end
	return factionColor .. " [" .. TRZ_ZoneNameClean(zone) .. "]" .. TRZ_FONT_OFF;
end

function TRZ_GetContinentText(zone,colors)
	local continentColor = TRZ_WHITE;
	if ( zone == nil ) then
		return "";
	end
	local iContinent=LT:GetContinent(zone);
	if (colors) then
		if ( iContinent == trz_current_continent ) then
			continentColor = TRZ_GREEN;
		else
			continentColor = TRZ_YELLOW;
		end
	end
	return continentColor .. " (" .. iContinent .. ")";
end

function TRZ_GetLevelText(zone,low,high,colors)
	local levelColor = TRZ_WHITE;
	if ( colors ) then
		levelColor = TRZ_GetColorRange(low,high);
	end
	return levelColor .. format("%s (%d-%d)", TRZ_ZoneNameClean(zone), low, high) .. TRZ_FONT_OFF;
end

function TRZ_GetCityText(zone,colors)
  local levelColor = TRZ_WHITE;
  if (colors) then
	local r, g, b = LT:GetFactionColor(zone);
    levelColor = TRZ_RGBPercToHex(r, g, b);
  end
  return levelColor .. TRZ_ZoneNameClean(zone) .. TRZ_FONT_OFF;
end

function TRZ_UpdateButtonText()	
  local zoneColor;
  local playerLevel = UnitLevel("player");
  local zoneName = LT:GetMapNameByIDAlt(C_Map.GetBestMapForUnit("player"))
  if (zoneName == nil) then return end
  local colorTooltip = TitanGetVar(TRZ_ID, "ShowColoredText");

  trz_button_text = "";
  trz_current_continent = LT:GetContinent(zoneName)
  trz_current_zone = zoneName;
  local low, high = LT:GetLevel(zoneName);
  
  if (LT:IsCity(zoneName) == true) then
    trz_button_text = TRZ_GetCityText(zoneName,colorTooltip);
  else
    trz_button_text = TRZ_GetLevelText(zoneName,low,high,colorTooltip);
  end
  return
end

function  TRZ_UpdateTooltipText()	
  local player_level = UnitLevel("player");
  local c,i;
  local tempText;
  local firstShown;
  local showLower = 0;
  local showHigher = 0;
  local colorTooltip = TitanGetVar(TRZ_ID, "ShowColoredText");
  local showInstance = TitanGetVar(TRZ_ID, "ShowInstance");
  local showCurInstance = TitanGetVar(TRZ_ID, "ShowCurInstance");
  local showBattleground = TitanGetVar(TRZ_ID, "ShowBattleground");
  local showRaid = TitanGetVar(TRZ_ID, "ShowRaid");
  local showArena = TitanGetVar(TRZ_ID, "ShowArena");
  local showFaction = TitanGetVar(TRZ_ID, "ShowFaction");
  local showContinent = TitanGetVar(TRZ_ID, "ShowContinent");
  local showLoc = TitanGetVar(TRZ_ID, "ShowLoc");
  local rows = 4;
	
  trz_tooltip_text = "";
  if ( TitanGetVar(TRZ_ID, "ShowLower" ) ) then
    showLower = 5;
  end
  if ( TitanGetVar(TRZ_ID, "ShowHigher" ) ) then
    showHigher = 5;
  end
  local iType = LT:GetType(trz_current_zone);
  if (iType == "Instance" or iType == "Battleground" or iType == "Arena" ) then
    tempText = TRZ_TOOLTIP_CZONE .. TRZ_GetInstanceText(trz_current_zone,colorTooltip);
  else
		tempText = TRZ_TOOLTIP_CZONE .. TRZ_GetZoneText(trz_current_zone,colorTooltip) .. "\t";
	  -- Show faction
		if ( showFaction ) then
			tempText = tempText .. TRZ_GetFactionText(trz_current_zone,colorTooltip);
		end
		-- show continent
		if ( showContinent ) then
			tempText = tempText .. TRZ_GetContinentText(trz_current_zone,colorTooltip);
		end
	
		-- Show instances for current zone.
	  if ( showCurInstance ) then
			if ( LT:DoesZoneHaveInstances(trz_current_zone) == true ) then
			  local instance;
			  for instance in LT:IterateZoneInstances(trz_current_zone) do
			  	if (LT:IsContested(trz_current_zone) or LT:IsFriendly(trz_current_zone)) then
						tempText = tempText .. "\n" .. TRZ_TOOLTIP_CINSTANCES ..
												TRZ_GetInstanceText(instance, colorTooltip);
						rows = rows + 1;
					end
				end
			end
		end			
	end
	
	-- Show recommended zones.
	tempText = tempText .. "\n\n" .. TRZ_WHITE .. TRZ_TOOLTIP_RECOMMEND .. TRZ_FONT_OFF;
	local iZone;
	for iZone in LT:IterateZones() do
		local low, high = LT:GetLevel(iZone)
		if ( (low - showHigher) <= player_level and 
			(high + showLower) >= player_level ) then	
			if ( LT:IsContested(iZone) or LT:IsFriendly(iZone) ) then

				if ( rows >= TRZ_MAX_ROWS ) then
					tempText = tempText .. "\n" .. TRZ_TOOLTIP_MORE;
					trz_tooltip_text = tempText;
					return
				end

				-- Add zone name and level range.
				tempText = tempText .. "\n" .. TRZ_GetZoneText(iZone,colorTooltip) .. "\t";
				rows = rows + 1;
				
				-- Show faction
				if ( showFaction ) then
					tempText = tempText .. TRZ_GetFactionText(iZone,colorTooltip);
				end

				-- show continent
				if ( showContinent ) then
					tempText = tempText .. TRZ_GetContinentText(iZone,colorTooltip);
				end
			end
		end
	end
	
	-- Show recommended instances/battlegrounds/raids
	if( showInstance or showRaid or showBattleground or showArena ) then
		firstShown = nil;
		local instance;
		for instance in LT:IterateInstances() do
		    local low, high = LT:GetLevel(instance);
			if ( (low - showHigher) <= player_level and
					 (high + showLower) >= player_level ) then
		  	if ( LT:IsContested(instance) or LT:IsFriendly(instance) ) then
			  	local t = LT:GetType(instance);
				local groupSize = LT:GetInstanceGroupSize(instance);
				if ( (t == "Instance" and showInstance and groupSize == 5) or 
                            (groupSize > 5 and showRaid and t == "Instance") or
							 (t == "Battleground" and showBattleground) or (t == "Arena" and showArena) ) then
						if ( rows >= TRZ_MAX_ROWS ) then
							tempText = tempText .. "\n" .. TRZ_TOOLTIP_MORE;
							trz_tooltip_text = tempText;
							return
						end
						if ( not firstShown )	then
							tempText = tempText .. "\n\n" .. TRZ_WHITE .. TRZ_TOOLTIP_RECOMMEND_INSTANCES .. TRZ_FONT_OFF;
							firstShown = 1;
							rows = rows + 1;
						end
						if ( rows >= TRZ_MAX_ROWS ) then
							tempText = tempText .. "\n" .. TRZ_TOOLTIP_MORE;
							trz_tooltip_text = tempText;
							return
						end
						tempText = tempText .. "\n" .. TRZ_GetInstanceText(instance,colorTooltip);
						rows = rows + 1;
						if ( showLoc ) then
							local iEntrance, eX, eY = LT:GetEntrancePortalLocation(instance);
							if (iEntrance ~= nil) then
								if eX then eX = eX*100 end;
								if eY then eY = eY*100 end;
								tempText = tempText .. "\t" .. TRZ_WHITE .. "<" .. iEntrance .. " " .. eX .. "," .. eY .. ">" .. TRZ_FONT_OFF
							end
						end
					end
				end
			end
		end
	end
					  
	trz_tooltip_text = tempText;
	return
end


-- Worldmap function --

function TRZ_ToggleWorldMapText()
	if (TitanGetVar(TRZ_ID, "ShowMap")) then
		TRZ_WorldMap_Frame:Show();
	else
		TRZ_WorldMap_Frame:Hide();
	end
end

function TRZ_WorldMapButton_OnUpdate(arg1)
	local player_level = UnitLevel("player");
	local zoneColor;
	local wZone;
	local wZone2;
	local zoneText="";
	if (WorldMapFrame.areaName ~= nil) then
		wZone=LT:GetMapNameByIDAlt(WorldMapFrame:GetMapID());
		-- Instance display
		if (WorldMapFrameAreaPetLevels:GetText()) then
			TRZ_WorldMap_Text:SetPoint("TOP", WorldMapFrameAreaPetLevels, "BOTTOM");
		elseif (WorldMapFrameAreaDescription:GetText()) then
			TRZ_WorldMap_Text:SetPoint("TOP", WorldMapFrameAreaDescription, "BOTTOM");
		else
			TRZ_WorldMap_Text:SetPoint("TOP", WorldMapFrameAreaLabel, "BOTTOM");
		end
		if ( LT:DoesZoneHaveInstances(wZone) == true ) then
			local instance;
			zoneText = TRZ_NORMAL .. TRZ_TOOLTIP_CINSTANCES .. "\n" .. TRZ_FONT_OFF;
			for instance in LT:IterateZoneInstances(wZone) do
				zoneText = zoneText .. TRZ_GetInstanceText(instance, true) .. "\n";
			end
		end
		if (zoneText ~= nil) then
			TRZ_WorldMap_Text:SetText(zoneText);
		else
			TRZ_WorldMap_Text:SetText("");
		end
	else
		TRZ_WorldMap_Text:SetText("");
	end

	if (WorldMapFrame.poiHighlight) then
	    wZone2=WorldMapFrameAreaLabel:GetText();
		if (not LT:IsZone(wZone2)) then
			wZone2=WorldMapFrame.areaName;
		end
		wZone2=LT:GetUniqueZoneNameForLookup(wZone2, WorldMapFrame:GetMapID());	-- Fixes issue retrieving instances from newer zones that share a name with older zones.
		if (wZone ~= wZone2) then
			if (LT:IsZone(wZone2)) then
				if (LT:GetType(wZone2) == "Zone") then
					if ( LT:DoesZoneHaveInstances(wZone2) == true ) then
						if (zoneText ~= nil) then
							zoneText = zoneText .. TRZ_NORMAL .. TRZ_TOOLTIP_RINSTANCES .. "\n" .. TRZ_FONT_OFF;
						else
							zoneText = TRZ_NORMAL .. TRZ_TOOLTIP_RINSTANCES .. "\n" .. TRZ_FONT_OFF;
						end
						local instance;
						for instance in LT:IterateZoneInstances(wZone2) do
							zoneText = zoneText .. TRZ_GetInstanceText(instance, true) .. "\n";
						end
					end
					if (zoneText ~= nil) then
						TRZ_WorldMap_Text:SetText(zoneText);
					else
						TRZ_WorldMap_Text:SetText("");
					end
				end
			end
		end
	end
end
