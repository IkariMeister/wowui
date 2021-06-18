
TitanArtifactPower = {}
local TAP = TitanArtifactPower

TAP.id = "ArtifactPower";
TAP.addon = "TitanArtifactPower";
TAP.button_label = "AP: "
TAP.menu_text = TAP.id;
TAP.tooltip_header = "Artifact Information";

TAP.menu_option = "Options";
TAP.menu_hide = "Hide";
TAP.menu_showNumbers = "Hide AP numbers";


TAP.version = tostring(GetAddOnMetadata(TAP.addon, "Version")) or "Unknown" 
TAP.author = GetAddOnMetadata(TAP.addon, "Author") or "Unknown"
local updateTable = {TAP.id, TITAN_PANEL_UPDATE_BUTTON};
-- ******************************** Variables *******************************
local currentArtifactPower=0;
local nextRankArtifactPower=0;
local diffXP = 0;
local availableRanks=0;
local currentRank=0;
local knowledgeLevel=0;
local knowledgeMultiplier=1;
local researchNotesTimeLeft="";
local researchNotesTotal=0;
local researchNotesReady=0;
local currentIcon;
local researchNotesString="Artifact Research Notes";
local totXP=0;
local hiddenAppeareanceProgress={};
local maxHiddenAppeareanceProgress={};
local TitanVar_ShowNumbers="TAP_ShowNumbers";
local ArtSpellId = 227907;
local ArtSpellName;
local tooltip;
local apInBags=0;
local ItemAPSearchToken="Use Grants (%d+)";
local currentArtifactId="";
local initialAp={};
local sessionAp={};
local totalSessionAp=0;
-- ******************************** Functions *******************************

function TAP.Button_OnLoad(self)

	self.registry = {
		id = TAP.id,
		version = TAP.version,
		category = "Information",	
		menuText = TAP.menu_text,
		buttonTextFunction = "TitanArtifactPower_GetButtonText", 
		tooltipTitle = TAP.tooltip_header,
		tooltipTextFunction = "TitanArtifactPower_GetTooltipText", 
		icon = "Interface\\Icons\\Icon_UpgradeStone_legendary",	
		iconWidth = 16,
		savedVariables = {
			ShowIcon = 1,
			ShowLabelText = 1,
			ShowColoredText = 1,               
		}
	};     

	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	self:RegisterEvent("ARTIFACT_XP_UPDATE")
	self:RegisterEvent("ARTIFACT_CLOSE")
	self:RegisterEvent("ARTIFACT_RESPEC_PROMPT")
	self:RegisterEvent("UNIT_INVENTORY_CHANGED")
	self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
	self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
	self:RegisterEvent("ARTIFACT_EQUIPPED_CHANGED")
	self:RegisterEvent("ARTIFACT_TRAITS_CHANGED")
	self:RegisterEvent("ARTIFACT_UPDATE")
	self:RegisterEvent("ADDON_LOADED")
	self:RegisterEvent("BAG_UPDATE_DELAYED");
	
	ArtSpellName = GetSpellInfo(ArtSpellId)
	
	tooltip = CreateFrame("GameTooltip", "tap_tooltip", nil, "GameTooltipTemplate")
	
	TAP.UpdateInfo();
	
end

function TAP.Button_OnEvent(self, event, arg1)
	
	TAP.UpdateInfo();
	
	if(currentArtifactId and currentArtifactId~="" and (initialAp[currentArtifactId]==nil or initialAp[currentArtifactId]<=0)) then	
		initialAp[currentArtifactId]=totXP;		
	end
		
	if(event == "ARTIFACT_UPDATE") then
		TAP.UpdateKnowledgeInfo();
		
	end
	
	if event == "ADDON_LOADED" and arg1=="TitanArtifactPower" then
		
		if SavedIsHideNumbersEnabled == nil then
			SavedIsHideNumbersEnabled = 0; 			
		end
		
		TitanPanelButton_UpdateButton(TAP.id);
	end
	
	if(event=="BAG_UPDATE_DELAYED") then	
		TAP.FindTokens();	
		TitanPanelButton_UpdateButton(TAP.id);
	end
	
	if(event == "ARTIFACT_XP_UPDATE") then
		sessionAp[currentArtifactId]=totXP-initialAp[currentArtifactId];
		
		local tempTotal=0;
		for k,v in pairs(sessionAp) do
		  tempTotal = tempTotal+v;
		end
		totalSessionAp=tempTotal;
	end
	
end

function comma_value(n) -- credit http://richard.warburton.it
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end

function TAP.Button_OnClick(self, button)
	if (button == "LeftButton") then
		if IsShiftKeyDown() then
			if(HasArtifactEquipped()) then
				local curAp=makeReadable(currentArtifactPower)
				local nextAp=makeReadable(nextRankArtifactPower)
				local artifactLink = GetInventoryItemLink("player", 16)
				if ( availableRanks > 0 ) then
					DEFAULT_CHAT_FRAME.editBox:SetText(string.format("%s AP: %s/%s (Rank %d) [+%d]", artifactLink, curAp, nextAp, currentRank, availableRanks))
				else 
					DEFAULT_CHAT_FRAME.editBox:SetText(string.format("%s AP: %s/%s (Rank %d)", artifactLink, curAp, nextAp, currentRank))
				end
			end
		else
			ArtifactFrame_LoadUI()
			if ( ArtifactFrame:IsVisible() ) then
				HideUIPanel(ArtifactFrame)
			else
				SocketInventoryItem(16);
			end
		end
	end
end

function makeReadable(value)
		if value > 1000000000 then
			return string.format("%.1fB", value/1000000000)
		elseif value > 1000000 then
			return string.format("%.1fM", value/1000000)
		elseif value > 1000 then
			return string.format("%.1fk", value/1000)
		else
			return value
		end
end

function TitanArtifactPower_GetButtonText(id)
	local button, id = TitanUtils_GetButton(id, true);
	local curAPText=currentArtifactPower;
	local nextAPText=nextRankArtifactPower;
	
	button.registry.icon=currentIcon;

	curAPText = makeReadable(currentArtifactPower);
	nextAPText = makeReadable(nextRankArtifactPower);
	
	local percentage = 0;
	if(nextRankArtifactPower ~= 0) then
		percentage=(currentArtifactPower/nextRankArtifactPower)*100;
	end
	
	local percentageInBags = 0;
	if(apInBags>0) then
		percentageInBags = (apInBags/nextRankArtifactPower)*100;		
	end
	
	local val="";
	if(SavedIsHideNumbersEnabled==0) then
		val = string.format("%s/%s (%.1f%%)", curAPText , nextAPText, percentage);
		if (TitanGetVar(TAP.id, "ShowLabelText")) then
			val = TAP.button_label .. val;
		end
	else
		val = string.format("%.1f%%", percentage);
		if (TitanGetVar(TAP.id, "ShowLabelText")) then
			val = TAP.button_label .. val;
		end
	end
	
	if(availableRanks>0) then
		val = val.." [|cff00ff00+"..availableRanks.."|r]";
	end
	
	if(percentageInBags>0) then
		val = val.." [|cff1E90FF+"..string.format("%.1f%%",percentageInBags).."|r]";
	end
	
	return val;
end

function TitanArtifactPower_GetTooltipText()
	local tip = string.format("Artifact Rank: %s", currentRank);
	if(availableRanks>0) then
		tip = tip .. "[|cff00ff00+" .. availableRanks .. "|r]"
	end
	
	tip = tip .. "\n";
	
	tip = tip .. string.format("XP for next rank: %s (%s)", comma_value(diffXP),makeReadable(diffXP));
	
	if(totXP>0) then
		tip = tip .. "\n"
		tip = tip .. string.format("Total XP: %s (%s)", comma_value(totXP),makeReadable(totXP));
	end
	
	if(totalSessionAp>0) then
		tip = tip .. "\n"
		tip = tip .. string.format("Earned XP per session: %s", comma_value(totalSessionAp));
	end
	
	if(apInBags>0) then
		local percentInBags = (apInBags/nextRankArtifactPower)*100;
		tip = tip .. "\n"
		tip = tip .. string.format("AP in Bags: %s (%.1f%%)", makeReadable(apInBags), percentInBags);
	end
	
	if((knowledgeLevel ~= nil) and knowledgeLevel>0) then
		local mult = knowledgeMultiplier*100-100;
		tip = tip .. "\n";
		tip = tip .. string.format("Knowledge Level: %s", knowledgeLevel);
		tip = tip .. "\n";
		tip = tip .. string.format("Knowledge Multiplier: %s%%", comma_value(mult));
	end
	
	if(researchNotesTotal>0) then 
		tip = tip .. "\n";
		tip = tip .. string.format("Artifact Research Notes ready: %s/%s", researchNotesReady, researchNotesTotal);
	end
	
	if(researchNotesTimeLeft~=nil and researchNotesTimeLeft~="") then
		tip = tip .. "\n";
		tip = tip .. string.format("Artifact Research Notes time left: %s", researchNotesTimeLeft);
	end
	
	tip = tip .. "\n\n---Hidden artifact skins criteria---\n";
	
	tip = tip .. string.format("Hidden skin-Dungeons: %s/%s", hiddenAppeareanceProgress[0],maxHiddenAppeareanceProgress[0]);
	
	tip = tip .. "\n";
	tip = tip .. string.format("Hidden skin-WQs: %s/%s", hiddenAppeareanceProgress[1],maxHiddenAppeareanceProgress[1]);
	
	tip = tip .. "\n";
	tip = tip .. string.format("Hidden skin-Kills: %s/%s", hiddenAppeareanceProgress[2],maxHiddenAppeareanceProgress[2]);
	
	return tip;
end

function IsShowNumbersEnabled()
	if SavedIsHideNumbersEnabled==1 then
		return true;
	else
		return false;
	end
end

function ShowHideNumbers()
	
	if SavedIsHideNumbersEnabled==1 then
		SavedIsHideNumbersEnabled=0;
	else
		SavedIsHideNumbersEnabled=1;
	end
	
	TitanPanelButton_UpdateButton(TAP.id);
end

function TitanPanelRightClickMenu_PrepareArtifactPowerMenu()
	if UIDROPDOWNMENU_MENU_LEVEL == 1 then
		TitanPanelRightClickMenu_AddTitle(TitanPlugins[TAP.id].menuText);
		TitanPanelRightClickMenu_AddSpacer();     
		
		info = {};
		info.text = TAP.menu_showNumbers;
		info.func = ShowHideNumbers;
		info.arg1 = TAP.id;
		info.checked = IsShowNumbersEnabled();
		L_UIDropDownMenu_AddButton(info);
	
		TitanPanelRightClickMenu_AddSpacer();     
		TitanPanelRightClickMenu_AddToggleIcon(TAP.id);
		TitanPanelRightClickMenu_AddToggleLabelText(TAP.id);
		TitanPanelRightClickMenu_AddSpacer();     
		TitanPanelRightClickMenu_AddCommand(TAP.menu_hide, TAP.id, TITAN_PANEL_MENU_FUNC_HIDE);
		
	end
end

--========= Artifact methods ==========---
function TAP.UpdateInfo()
	if ( not HasArtifactEquipped() ) then
		nextRankArtifactPower=0;
		currentArtifactPower=0;
		currentIcon=nil;
		TitanPanelPluginHandle_OnUpdate(updateTable)
		return;
	end
	
	local itemID, altItemID, name, icon, totalXP, pointsSpent, _, _, _, _, _, _, artifactTier = C_ArtifactUI.GetEquippedArtifactInfo();
	
	currentArtifactId=name;
	currentArtifactPower=totalXP;
	currentIcon=icon;
	currentRank=pointsSpent;

	availableRanks = TAP.GetAvailableRanks(pointsSpent, artifactTier, totalXP);
	local nextRankNeededXP = TAP.GetNextRankNeededXP(pointsSpent, artifactTier);
	local totalRanks = pointsSpent+availableRanks;
	
	diffXP = C_ArtifactUI.GetCostForPointAtRank(totalRanks, artifactTier)-currentArtifactPower;

	nextRankArtifactPower=nextRankNeededXP;
	
	totXP=0;
	for i=1,pointsSpent-1 do
		totXP=totXP + C_ArtifactUI.GetCostForPointAtRank(i, artifactTier);
	end
	totXP=totXP+currentArtifactPower+100;
	
	hiddenAppeareanceProgress[0]=0;
	for i=1,12 do
		_,_,_,a,b = GetAchievementCriteriaInfo(11152,i) hiddenAppeareanceProgress[0]=hiddenAppeareanceProgress[0]+a;
	end
	
	_,_,_,_,maxHiddenAppeareanceProgress[0] = GetAchievementCriteriaInfo(11152,1);
	_,_,_,hiddenAppeareanceProgress[1],maxHiddenAppeareanceProgress[1] = GetAchievementCriteriaInfo(11153,1);
	_,_,_,hiddenAppeareanceProgress[2],maxHiddenAppeareanceProgress[2] = GetAchievementCriteriaInfo(11154,1);
	
	TAP.UpdateArtifactResearchInfo()
	TitanPanelPluginHandle_OnUpdate(updateTable)
end

function TAP.GetAvailableRanks(pointsSpent, artifactTier, totalXP)
	local availableRanks = 0;
	local nextRankNeededXP = C_ArtifactUI.GetCostForPointAtRank(pointsSpent, artifactTier);
	while totalXP >= nextRankNeededXP and nextRankNeededXP > 0 do
		totalXP = totalXP - nextRankNeededXP;
	
		pointsSpent = pointsSpent + 1;
		availableRanks = availableRanks + 1;
	
		nextRankNeededXP = C_ArtifactUI.GetCostForPointAtRank(pointsSpent, artifactTier);
	end
  return availableRanks;
end

function TAP.GetNextRankNeededXP(pointsSpent, artifactTier)
	return C_ArtifactUI.GetCostForPointAtRank(pointsSpent, artifactTier);
end

function TAP.UpdateKnowledgeInfo()
	local kLevel=C_ArtifactUI.GetArtifactKnowledgeLevel();
	local kMultiplier=C_ArtifactUI.GetArtifactKnowledgeMultiplier();	
	
	if(kLevel~=nil and kLevel>0) then
		knowledgeLevel = kLevel;
		knowledgeMultiplier = kMultiplier;
	end
end

function TAP.UpdateArtifactResearchInfo()
	local looseShipments = C_Garrison.GetLooseShipments(LE_GARRISON_TYPE_7_0);
	if (looseShipments~=nil) then
		for i = 1, #looseShipments do
			local name, texture, shipmentCapacity, shipmentsReady, shipmentsTotal, creationTime, duration, timeleftString = C_Garrison.GetLandingPageShipmentInfoByContainerID(looseShipments[i]);
			if(name==researchNotesString) then
				researchNotesTimeLeft=timeleftString;
				researchNotesTotal=shipmentsTotal;
				researchNotesReady=shipmentsReady;
			end
		end
	end
end


function TAP.FindTokens()		
	totalPower = 0;
	local item;
	local ap;
	for bag = 0, 4 do	
		for slot = 1, GetContainerNumSlots(bag) do
			item = GetContainerItemLink(bag, slot)
			ap = TAP.GetItemArtifactPower(item);
			if ap then
				totalPower = totalPower + ap					
			end
		end
	end
	apInBags=totalPower;
end

function TAP.GetItemArtifactPower(item)
	
    if item then
        local spell = GetItemSpell(item)
        if spell and spell == ArtSpellName then
            tooltip:SetOwner(UIParent, "ANCHOR_NONE")
            tooltip:SetHyperlink (item)
			local text = _G["tap_tooltip".."TextLeft4"]:GetText()			
			
			local ap_number;
			
			if text and string.match(string.gsub(string.gsub(text,"%p",""),"%d+([ ])?%d+",""),ItemAPSearchToken) then
				if string.match(text,"(%d+) Artifact") then
					ap_number=string.match(string.gsub(string.gsub(text,"%p",""),"%d+([ ])?%d+",""),ItemAPSearchToken)
				else
					_,_,power = string.find(text,"(%d*[,%.]?%d+)")
					local ap_mult=1;
					
					if string.match(text,"million") then
						ap_mult=1e6;
					end
					if string.match(text,"billion") then
						ap_mult=1e9;
					end
					ap_number=power*ap_mult
				end
			end
			
			if(text == nil) then
				return nil
			end
			
            tooltip:Hide()
            return ap_number
        else
            return nil
        end
    else
        return nil
    end
end