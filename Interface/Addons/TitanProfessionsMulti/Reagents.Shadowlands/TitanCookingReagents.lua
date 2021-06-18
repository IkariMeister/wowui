--[[
Description: This plugin is part of the "Titan Panel [Professions] Multi" addon. It shows Cooking Reagents.
Site: https://www.curseforge.com/wow/addons/titan-panel-professions-multi
Author: Canettieri
Special Thanks to Eliote.
--]]

local ADDON_NAME, L = ...;
local ACE = LibStub("AceLocale-3.0"):GetLocale("Titan", true)
local version = GetAddOnMetadata(ADDON_NAME, "Version")
local ID = "TITAN_RESCOOMM_SL"

local reagentOneName = L["aetherealMeat"]
local reagentOneIcon = "|TInterface\\Icons\\inv_cooking_90_aetherealmeat:0|t"
local reagentOneID = 172052
local reagentOne = 0
local startReagentOne = 0

local reagentTwoName = L["cCrawlerMeat"]
local reagentTwoIcon = "|TInterface\\Icons\\inv_cooking_90_creepingcrawlermeat:0|t"
local reagentTwoID = 179314
local reagentTwo = 0
local startReagentTwo = 0

local reagentThreeName = L["phantasmalHaunch"]
local reagentThreeIcon = "|TInterface\\Icons\\inv_cooking_90_phantasmalhaunch:0|t"
local reagentThreeID = 172055
local reagentThree = 0
local startReagentThree = 0

local reagentFourName = L["rSeraphicWing"]
local reagentFourIcon = "|TInterface\\Icons\\inv_misc_food_46:0|t"
local reagentFourID = 172054
local reagentFour = 0
local startReagentFour = 0

local reagentFiveName = L["sinhadowyShank"]
local reagentFiveIcon = "|TInterface\\Icons\\inv_misc_food_72:0|t"
local reagentFiveID = 179315
local reagentFive = 0
local startReagentFive = 0

local reagentSixName = L["tenebrousRibs"]
local reagentSixIcon = "|TInterface\\Icons\\inv_cooking_90_tenebrousribs:0|t"
local reagentSixID = 172053
local reagentSix = 0
local startReagentSix = 0
--[[
local reagentSevenName = L["spollen"]
local reagentSevenIcon = "|TInterface\\Icons\\inv_misc_herb_pollen:0|t"
local reagentSevenID = 152509
local reagentSeven = 0
local startReagentSeven = 0

local reagentEightName = L["aweed"]
local reagentEightIcon = "|TInterface\\Icons\\inv_misc_herb_anchorweed:0|t"
local reagentEightID = 152510
local reagentEight = 0
local startReagentEight = 0]]--
-----------------------------------------------
local function getReagentOne()
	return GetItemCount(reagentOneID, true) or 0
end
local function getReagentTwo()
	return GetItemCount(reagentTwoID, true) or 0
end
local function getReagentThree()
	return GetItemCount(reagentThreeID, true) or 0
end
local function getReagentFour()
	return GetItemCount(reagentFourID, true) or 0
end
local function getReagentFive()
	return GetItemCount(reagentFiveID, true) or 0
end
local function getReagentSix()
	return GetItemCount(reagentSixID, true) or 0
end--[[
local function getReagentSeven()
	return GetItemCount(reagentSevenID, true) or 0
end
local function getReagentEight()
	return GetItemCount(reagentEightID, true) or 0
end]]--
-----------------------------------------------
local function GetButtonText(self, id)
	-- Reagente 1
	local reagentOneText
	if not reagentOne then
		reagentOneText = "  "..reagentOneIcon.." "..TitanUtils_GetHighlightText("0")
	else
		reagentOneText = "  "..reagentOneIcon.." "..TitanUtils_GetHighlightText(reagentOne)
	end

	local barBalanceReagentOne = ""
	if TitanGetVar(ID, "ShowBarBalance") then
		if (reagentOne - startReagentOne) > 0 then
			barBalanceReagentOne = " |cFF69FF69["..(reagentOne - startReagentOne).."]"
		elseif (reagentOne - startReagentOne) < 0 then
			barBalanceReagentOne = " |cFFFF2e2e["..(reagentOne - startReagentOne).."]"
		end
	end

	local reagentOneBar = reagentOneText..barBalanceReagentOne.." "
	if TitanGetVar(id, "HideReagentOneSL") then
		reagentOneBar = ""
	end
	-- Fim Reagente 1
	-- Reagente 2
	local reagentTwoText
	if not reagentTwo then
		reagentTwoText = "  "..reagentTwoIcon.." "..TitanUtils_GetHighlightText("0")
	else
		reagentTwoText = "  "..reagentTwoIcon.." "..TitanUtils_GetHighlightText(reagentTwo)
	end

	local barBalanceReagentTwo = ""
	if TitanGetVar(ID, "ShowBarBalance") then
		if (reagentTwo - startReagentTwo) > 0 then
			barBalanceReagentTwo = " |cFF69FF69["..(reagentTwo - startReagentTwo).."]"
		elseif (reagentTwo - startReagentTwo) < 0 then
			barBalanceReagentTwo = " |cFFFF2e2e["..(reagentTwo - startReagentTwo).."]"
		end
	end

	local reagentTwoBar = reagentTwoText..barBalanceReagentTwo.." "
	if TitanGetVar(id, "HideReagentTwoSL") then
		reagentTwoBar = ""
	end
	-- Fim Reagente 2
	-- Reagente 3
	local reagentThreeText
	if not reagentThree then
		reagentThreeText = "  "..reagentThreeIcon.." "..TitanUtils_GetHighlightText("0")
	else
		reagentThreeText = "  "..reagentThreeIcon.." "..TitanUtils_GetHighlightText(reagentThree)
	end

	local barBalanceReagentThree = ""
	if TitanGetVar(ID, "ShowBarBalance") then
		if (reagentThree - startReagentThree) > 0 then
			barBalanceReagentThree = " |cFF69FF69["..(reagentThree - startReagentThree).."]"
		elseif (reagentThree - startReagentThree) < 0 then
			barBalanceReagentThree = " |cFFFF2e2e["..(reagentThree - startReagentThree).."]"
		end
	end

	local reagentThreeBar = reagentThreeText..barBalanceReagentThree.." "
	if TitanGetVar(id, "HideReagentThreeSL") then
		reagentThreeBar = ""
	end
	-- Fim Reagente 3
	-- Reagente 4
	local reagentFourText
	if not reagentFour then
		reagentFourText = "  "..reagentFourIcon.." "..TitanUtils_GetHighlightText("0")
	else
		reagentFourText = "  "..reagentFourIcon.." "..TitanUtils_GetHighlightText(reagentFour)
	end

	local barBalanceReagentFour = ""
	if TitanGetVar(ID, "ShowBarBalance") then
		if (reagentFour - startReagentFour) > 0 then
			barBalanceReagentFour = " |cFF69FF69["..(reagentFour - startReagentFour).."]"
		elseif (reagentFour - startReagentFour) < 0 then
			barBalanceReagentFour = " |cFFFF2e2e["..(reagentFour - startReagentFour).."]"
		end
	end

	local reagentFourBar = reagentFourText..barBalanceReagentFour.." "
	if TitanGetVar(id, "HideReagentFourSL") then
		reagentFourBar = ""
	end
	-- Fim Reagente 4
	-- Reagente 5
	local reagentFiveText
	if not reagentFive then
		reagentFiveText = "  "..reagentFiveIcon.." "..TitanUtils_GetHighlightText("0")
	else
		reagentFiveText = "  "..reagentFiveIcon.." "..TitanUtils_GetHighlightText(reagentFive)
	end

	local barBalanceReagentFive = ""
	if TitanGetVar(ID, "ShowBarBalance") then
		if (reagentFive - startReagentFive) > 0 then
			barBalanceReagentFive = " |cFF69FF69["..(reagentFive - startReagentFive).."]"
		elseif (reagentFive - startReagentFive) < 0 then
			barBalanceReagentFive = " |cFFFF2e2e["..(reagentFive - startReagentFive).."]"
		end
	end

	local reagentFiveBar = reagentFiveText..barBalanceReagentFive.." "
	if TitanGetVar(id, "HideReagentFiveSL") then
		reagentFiveBar = ""
	end
	-- Fim Reagente 5
	-- Reagente 6
	local reagentSixText
	if not reagentSix then
		reagentSixText = "  "..reagentSixIcon.." "..TitanUtils_GetHighlightText("0")
	else
		reagentSixText = "  "..reagentSixIcon.." "..TitanUtils_GetHighlightText(reagentSix)
	end

	local barBalanceReagentSix = ""
	if TitanGetVar(ID, "ShowBarBalance") then
		if (reagentSix - startReagentSix) > 0 then
			barBalanceReagentSix = " |cFF69FF69["..(reagentSix - startReagentSix).."]"
		elseif (reagentSix - startReagentSix) < 0 then
			barBalanceReagentSix = " |cFFFF2e2e["..(reagentSix - startReagentSix).."]"
		end
	end

	local reagentSixBar = reagentSixText..barBalanceReagentSix.." "
	if TitanGetVar(id, "HideReagentSixSL") then
		reagentSixBar = ""
	end
	-- Fim Reagente 6
	-- Reagente 7
	--[[
	local reagentSevenText
	if not reagentSeven then
		reagentSevenText = "  "..reagentSevenIcon.." "..TitanUtils_GetHighlightText("0")
	else
		reagentSevenText = "  "..reagentSevenIcon.." "..TitanUtils_GetHighlightText(reagentSeven)
	end

	local barBalanceReagentSeven = ""
	if TitanGetVar(ID, "ShowBarBalance") then
		if (reagentSeven - startReagentSeven) > 0 then
			barBalanceReagentSeven = " |cFF69FF69["..(reagentSeven - startReagentSeven).."]"
		elseif (reagentSeven - startReagentSeven) < 0 then
			barBalanceReagentSeven = " |cFFFF2e2e["..(reagentSeven - startReagentSeven).."]"
		end
	end

	local reagentSevenBar = reagentSevenText..barBalanceReagentSeven
	if TitanGetVar(id, "HideReagentSevenSL") then
		reagentSevenBar = ""
	end
	-- Fim Reagente 7
	-- Reagente 8
	local reagentEightText
	if not reagentEight then
		reagentEightText = "  "..reagentEightIcon.." "..TitanUtils_GetHighlightText("0")
	else
		reagentEightText = "  "..reagentEightIcon.." "..TitanUtils_GetHighlightText(reagentEight)
	end

	local barBalanceReagentEight = ""
	if TitanGetVar(ID, "ShowBarBalance") then
		if (reagentEight - startReagentEight) > 0 then
			barBalanceReagentEight = " |cFF69FF69["..(reagentEight - startReagentEight).."]"
		elseif (reagentEight - startReagentEight) < 0 then
			barBalanceReagentEight = " |cFFFF2e2e["..(reagentEight - startReagentEight).."]"
		end
	end

	local reagentEightBar = reagentEightText..barBalanceReagentEight
	if TitanGetVar(id, "HideReagentEightSL") then
		reagentEightBar = ""
	end
	-- Fim Reagente 8
	]]--
	return reagentOneBar..reagentTwoBar..reagentThreeBar..reagentFourBar..reagentFiveBar..reagentSixBar--[[..reagentSevenBar..reagentEightBar]]--
end
-----------------------------------------------
local function GetTooltipText(self, id)

	local reagentOneBag = " \n"..reagentOneIcon.." "..reagentOneName.."\n"..L["totalbag"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentOneID))
	local reagentOneBank = "\n"..L["totalbank"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentOneID, true) - GetItemCount(reagentOneID))

	local reagentTwoBag = "\n \n"..reagentTwoIcon.." "..reagentTwoName.."\n"..L["totalbag"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentTwoID))
	local reagentTwoBank = "\n"..L["totalbank"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentTwoID, true) - GetItemCount(reagentTwoID))

	local reagentThreeBag = "\n \n"..reagentThreeIcon.." "..reagentThreeName.."\n"..L["totalbag"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentThreeID))
	local reagentThreeBank = "\n"..L["totalbank"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentThreeID, true) - GetItemCount(reagentThreeID))

	local reagentFourBag = "\n \n"..reagentFourIcon.." "..reagentFourName.."\n"..L["totalbag"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentFourID))
	local reagentFourBank = "\n"..L["totalbank"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentFourID, true) - GetItemCount(reagentFourID))

	local reagentFiveBag = "\n \n"..reagentFiveIcon.." "..reagentFiveName.."\n"..L["totalbag"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentFiveID))
	local reagentFiveBank = "\n"..L["totalbank"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentFiveID, true) - GetItemCount(reagentFiveID))

	local reagentSixBag = "\n \n"..reagentSixIcon.." "..reagentSixName.."\n"..L["totalbag"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentSixID))
	local reagentSixBank = "\n"..L["totalbank"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentSixID, true) - GetItemCount(reagentSixID))
	--[[
	local reagentSevenBag = "\n\n"..reagentSevenIcon.." "..reagentSevenName.."\r\n"..L["totalbag"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentSevenID))
	local reagentSevenBank = "\r\n"..L["totalbank"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentSevenID, true) - GetItemCount(reagentSevenID))

	local reagentEightBag = "\n\n"..reagentEightIcon.." "..reagentEightName.."\r\n"..L["totalbag"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentEightID))
	local reagentEightBank = "\r\n"..L["totalbank"].."\t"..TitanUtils_GetHighlightText(GetItemCount(reagentEightID, true) - GetItemCount(reagentEightID))
	]]--
	local valueText = "" -- Difere com e sem reagente
	if reagentOne == 0 and reagentTwo == 0 and reagentThree == 0 and reagentFour == 0 and reagentFive == 0 and reagentSix == 0 --[[and reagentSeven == 0 and reagentEight == 0]] then
		valueText = "\r"..L["info"].."\r|cFFFF2e2e"..L["noreagent"]
	else
		valueText = reagentOneBag..reagentOneBank..reagentTwoBag..reagentTwoBank..reagentThreeBag..reagentThreeBank..reagentFourBag..reagentFourBank..reagentFiveBag..reagentFiveBank..reagentSixBag..reagentSixBank--[[..reagentSevenBag..reagentSevenBank..reagentEightBag..reagentEightBank]]--
	end

	return valueText
end
-----------------------------------------------
local eventsTable = {
	PLAYER_ENTERING_WORLD = function(self)
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
		self.PLAYER_ENTERING_WORLD = nil

		startReagentOne = getReagentOne()
		reagentOne = startReagentOne

		startReagentTwo = getReagentTwo()
		reagentTwo = startReagentTwo

		startReagentThree = getReagentThree()
		reagentThree = startReagentThree

		startReagentFour = getReagentFour()
		reagentFour = startReagentFour

		startReagentFive = getReagentFive()
		reagentFive = startReagentFive

		startReagentSix = getReagentSix()
		reagentSix = startReagentSix
		--[[
		startReagentSeven = getReagentSeven()
		reagentSeven = startReagentSeven

		startReagentEight = getReagentEight()
		reagentEight = startReagentEight
		]]--
		TitanPanelButton_UpdateButton(self.registry.id)

		self.BAG_UPDATE = function(self, bagID)
			local rgOne = getReagentOne()
			local rgTwo = getReagentTwo()
			local rgThree = getReagentThree()
			local rgFour = getReagentFour()
			local rgFive = getReagentFive()
			local rgSix = getReagentSix()
			--[[local rgSeven = getReagentSeven()
			local rgEight = getReagentEight()]]--
			if reagentOne == rgOne and reagentTwo == rgTwo and reagentThree == rgThree and reagentFour == rgFour and reagentFive == rgFive and reagentSix == rgSix --[[and reagentSeven == rgSeven and reagentEight == rgEight]] then return end

			reagentOne = rgOne
			reagentTwo = rgTwo
			reagentThree = rgThree
			reagentFour = rgFour
			reagentFive = rgFive
			reagentSix = rgSix
			--[[reagentSeven = rgSeven
			reagentEight = rgEight]]--
			TitanPanelButton_UpdateButton(self.registry.id)
		end
		self:RegisterEvent("BAG_UPDATE")
	end
}
-----------------------------------------------
function PrepareMenu(eddm, self, id)
	eddm.UIDropDownMenu_AddButton({
		text = TitanPlugins[id].menuText,
		hasArrow = false,
		isTitle = true,
		isUninteractable = true,
		notCheckable = true
	})

	eddm.UIDropDownMenu_AddButton({
		text = ACE["TITAN_PANEL_MENU_SHOW_ICON"],
		func = function() TitanPanelRightClickMenu_ToggleVar({ id, "ShowIcon", nil }) end,
		checked = TitanGetVar(id, "ShowIcon"),
		keepShownOnClick = 1
	})

	local info = {};
	info.text = L["showbb"];
	info.func = function() TitanToggleVar(id, "ShowBarBalance"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "ShowBarBalance");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	eddm.UIDropDownMenu_AddSeparator();

	local info = {};
	info.text = L["hide"].." "..reagentOneName;
	info.func = function() TitanToggleVar(id, "HideReagentOneSL"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "HideReagentOneSL");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	local info = {};
	info.text = L["hide"].." "..reagentTwoName;
	info.func = function() TitanToggleVar(id, "HideReagentTwoSL"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "HideReagentTwoSL");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	local info = {};
	info.text = L["hide"].." "..reagentThreeName;
	info.func = function() TitanToggleVar(id, "HideReagentThreeSL"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "HideReagentThreeSL");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	local info = {};
	info.text = L["hide"].." "..reagentFourName;
	info.func = function() TitanToggleVar(id, "HideReagentFourSL"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "HideReagentFourSL");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	local info = {};
	info.text = L["hide"].." "..reagentFiveName;
	info.func = function() TitanToggleVar(id, "HideReagentFiveSL"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "HideReagentFiveSL");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	local info = {};
	info.text = L["hide"].." "..reagentSixName;
	info.func = function() TitanToggleVar(id, "HideReagentSixSL"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "HideReagentSixSL");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);
	--[[
	local info = {};
	info.text = L["hide"].." "..reagentSevenName;
	info.func = function() TitanToggleVar(id, "HideReagentSevenSL"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "HideReagentSevenSL");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);

	local info = {};
	info.text = L["hide"].." "..reagentEightName;
	info.func = function() TitanToggleVar(id, "HideReagentEightSL"); TitanPanelButton_UpdateButton(id); end
	info.checked = TitanGetVar(id, "HideReagentEightSL");
	info.keepShownOnClick = true
	eddm.UIDropDownMenu_AddButton(info);
	]]--
	eddm.UIDropDownMenu_AddSpace();

	eddm.UIDropDownMenu_AddButton({
		notCheckable = true,
		text = ACE["TITAN_PANEL_MENU_HIDE"],
		func = function() TitanPanelRightClickMenu_Hide(id) end
	})

	eddm.UIDropDownMenu_AddSeparator();

	info = {};
	info.text = CLOSE;
	info.notCheckable = true
	info.keepShownOnClick = false
	eddm.UIDropDownMenu_AddButton(info);
end
-----------------------------------------------
L.Elib({
	id = ID,
	name = "Titan|cFFec7a38 "..L["cooking"].."|r [|cFFEC7A37"..L["rShadowlands"].."|r] Multi",
	tooltip = L["cooking"].."|r [|cFFEC7A37"..L["rSL"].."|r]",
	icon = "Interface\\Icons\\Inv_misc_food_15.blp",
	category = "Profession",
	version = version,
	getButtonText = GetButtonText,
	getTooltipText = GetTooltipText,
	prepareMenu = PrepareMenu,
	savedVariables = {
		ShowIcon = 1,
		DisplayOnRightSide = false,
		ShowBarBalance = false,
		ShowLabelText = false,
		HideReagentOneSL = false,
		HideReagentTwoSL = false,
		HideReagentThreeSL = false,
		HideReagentFourSL = false,
		HideReagentFiveSL = false,
		HideReagentSixSL = false,
		--[[HideReagentSevenSL = false,
		HideReagentEightSL = false,]]--
	},
	eventsTable = eventsTable
})
