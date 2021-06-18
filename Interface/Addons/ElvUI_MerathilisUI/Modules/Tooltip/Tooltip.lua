local MER, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_Tooltip')
local TT = E:GetModule('Tooltip')

--Cache global variables
--Lua functions
local _G = _G
local pairs, select = pairs, select
local format = string.format
local tsort, twipe = table.sort, table.wipe
--WoW API / Variables
local GetGuildInfo = GetGuildInfo
local GetMouseFocus = GetMouseFocus
local IsControlKeyDown = IsControlKeyDown
local IsAltKeyDown = IsAltKeyDown
local IsForbidden = IsForbidden
local IsShiftKeyDown = IsShiftKeyDown
local UnitClass = UnitClass
local UnitExists = UnitExists
local UnitIsAFK = UnitIsAFK
local UnitIsDND = UnitIsDND
local UnitIsPlayer = UnitIsPlayer
local UnitName = UnitName
local UnitPVPName = UnitPVPName
local UnitLevel = UnitLevel
local UnitRealmRelationship = UnitRealmRelationship
local UnitIsInMyGuild = UnitIsInMyGuild
local FOREIGN_SERVER_LABEL = FOREIGN_SERVER_LABEL
local LE_REALM_RELATION_COALESCED = LE_REALM_RELATION_COALESCED
local LE_REALM_RELATION_VIRTUAL = LE_REALM_RELATION_VIRTUAL
local INTERACTIVE_SERVER_LABEL = INTERACTIVE_SERVER_LABEL
local RAID_CLASS_COLORS = RAID_CLASS_COLORS
local hooksecurefunc = hooksecurefunc
local UIParent = UIParent
local C_LFGList_GetActivityInfo = C_LFGList.GetActivityInfo
local C_LFGList_GetSearchResultMemberCounts = C_LFGList.GetSearchResultMemberCounts
local C_LFGList_GetSearchResultInfo = C_LFGList.GetSearchResultInfo
local LFGListUtil_GetQuestDescription = LFGListUtil_GetQuestDescription
local C_LFGList_GetSearchResultMemberInfo = C_LFGList.GetSearchResultMemberInfo
local C_LFGList_GetSearchResultEncounterInfo = C_LFGList.GetSearchResultEncounterInfo
local LFGListSearchEntryUtil_GetFriendList = LFGListSearchEntryUtil_GetFriendList
-- GLOBALS:

local AFK_LABEL = " |cffFFFFFF<|r|cffFF0000"..L["CHAT_AFK"].."|r|cffFFFFFF>|r"
local DND_LABEL = " |cffFFFFFF<|r|cffFFFF00"..L["CHAT_DND"].."|r|cffFFFFFF>|r"

function module:SetUnitText(tt, unit, level, isShiftKeyDown)
	if not UnitIsPlayer(unit) then
		if tt:IsForbidden() then return end

		for i = 2, tt:NumLines() do
			local leftLine = _G["GameTooltipTextLeft"..i]
			local leftText = leftLine and leftLine.GetText and leftLine:GetText()
			if leftText then
				leftLine:SetText(leftText:gsub("%|cff7f7f7f%?%?%|r", "|cffff1919??|r"))
			end
		end
	end
end

function module:GameTooltip_OnTooltipSetUnit(tt)
	if tt:IsForbidden() then return end

	local unit = select(2, tt:GetUnit())
	if TT.db.visibility and not TT:IsModKeyDown(TT.db.visibility.unitFrames) and (tt:GetOwner() ~= _G.UIParent) then
		tt:Hide()
		return
	end

	if(not unit) then
		local GMF = GetMouseFocus()
		if(GMF and GMF.GetAttribute and GMF:GetAttribute("unit")) then
			unit = GMF:GetAttribute("unit")
		end
		if(not unit or not UnitExists(unit)) then
			return
		end
	end

	self:RemoveTrashLines(tt) --keep an eye on this may be buggy
	local level = UnitLevel(unit)
	local isShiftKeyDown = IsShiftKeyDown()

	local color
	if(UnitIsPlayer(unit)) then
		local localeClass, class = UnitClass(unit)
		local name, realm = UnitName(unit)
		local guildName, guildRankName, _, guildRealm = GetGuildInfo(unit)
		local pvpName = UnitPVPName(unit)
		local relationship = UnitRealmRelationship(unit)
		if not localeClass or not class then return; end
		color = E:ClassColor(class)

		local t1, t2 = '', ''
		if self.db.playerTitles and pvpName and pvpName ~= name then
			if E.db.mui.tooltip.titleColor then
				local p1, p2 = pvpName:match('(.*)'..name..'(.*)')
				if p1 and p1 ~= '' then
					if (UnitIsAFK(unit)) then
						t1 = '|cff00c0fa'..p1..'|r'..AFK_LABEL
					elseif (UnitIsDND(unit)) then
						t1 = '|cff00c0fa'..p1..'|r'..DND_LABEL
					else
						t1 = '|cff00c0fa'..p1..'|r'
					end
				end
				if p2 and p2 ~= '' then
					if (UnitIsAFK(unit)) then
						t2 = '|cff00c0fa'..p2..'|r'..AFK_LABEL
					elseif (UnitIsDND(unit)) then
						t2 = '|cff00c0fa'..p2..'|r'..DND_LABEL
					else
						t2 = '|cff00c0fa'..p2..'|r'
					end
				end
			else
				name = pvpName
			end
		end

		if realm and realm ~= "" then
			if isShiftKeyDown or self.db.alwaysShowRealm then
				realm = "-"..realm
			elseif relationship == LE_REALM_RELATION_COALESCED then
				realm = FOREIGN_SERVER_LABEL
			elseif relationship == LE_REALM_RELATION_VIRTUAL then
				realm = INTERACTIVE_SERVER_LABEL
			end
			realm = '|cff00c0fa'..realm..'|r'
		else
			realm = ''
		end

		if not E.db.mui.tooltip.titleColor then
			if(UnitIsAFK(unit)) then
				name = name..AFK_LABEL
			elseif(UnitIsDND(unit)) then
				name = name..DND_LABEL
			end
		end

		if E.db.mui.tooltip.titleColor then
			GameTooltipTextLeft1:SetFormattedText("%s|c%s%s|r%s%s", t1, color.colorStr, name, t2, realm)
		else
			GameTooltipTextLeft1:SetFormattedText("|c%s%s%s|r", color.colorStr, name, realm)
		end

		local lineOffset = 2
		if(guildName) then
			if(guildRealm and isShiftKeyDown) then
				guildName = guildName.."-"..guildRealm
			end

			if(self.db.guildRanks) then
				if UnitIsInMyGuild(unit) then
					GameTooltipTextLeft2:SetText(("|cff00c0fa[|r|cff00ff10%s|r|cff00c0fa]|r <|cff00ff10%s|r>"):format(guildName, guildRankName))
				else
					GameTooltipTextLeft2:SetText(("|cff00c0fa[|r|cff00ff10%s|r|cff00c0fa]|r <|cff00c0fa%s|r>"):format(guildName, guildRankName))
				end
			else
				GameTooltipTextLeft2:SetText(("[|cff00ff10%s|r]"):format(guildName))
			end
			lineOffset = 3
		end
	end

	for i = 2, tt:NumLines() do
		local leftLine = _G["GameTooltipTextLeft"..i]
		local rightLine = _G["GameTooltipTextRight"..i]
		local leftText = leftLine and leftLine.GetText and leftLine:GetText()
		local rightText = rightLine and rightLine.GetText and rightLine:GetText()
		if leftText and leftText:find(_G.TARGET) and rightText and rightText:find(E.myname) then
			rightLine:SetText(format("|cffff1919>> %s <<|r", _G.YOU))
		end
	end

end

function module:Initialize()
	if E.private.tooltip.enable ~= true then return end
	self.db = E.db.mui.tooltip
	MER:RegisterDB(self, "tooltip")

	module:ReskinTooltipIcons()

	hooksecurefunc(TT, "SetUnitText", module.SetUnitText)
	hooksecurefunc(TT, "GameTooltip_OnTooltipSetUnit", module.GameTooltip_OnTooltipSetUnit)
end

MER:RegisterModule(module:GetName())
