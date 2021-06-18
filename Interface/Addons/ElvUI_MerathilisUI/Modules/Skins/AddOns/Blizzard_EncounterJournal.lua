local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')

-- Cache global variables
-- Lua functions
local _G = _G
local ipairs, next, pairs, select, unpack = ipairs, next, pairs, select, unpack
-- WoW API / Variables
local CreateFrame = CreateFrame
local EJ_GetEncounterInfoByIndex = EJ_GetEncounterInfoByIndex
local hooksecurefunc = hooksecurefunc
local GetItemInfo = GetItemInfo
local GetItemQualityColor = GetItemQualityColor
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function SkinBosses()
	local bossIndex = 1;
	local _, _, bossID = EJ_GetEncounterInfoByIndex(bossIndex);
	local bossButton;

	while bossID do
		bossButton = _G["EncounterJournalBossButton"..bossIndex];
		if bossButton and not bossButton.isSkinned then
			S:HandleButton(bossButton)
			bossButton.creature:ClearAllPoints()
			bossButton.creature:Point("TOPLEFT", 1, -4)
			bossButton.isSkinned = true
		end

		bossIndex = bossIndex + 1;
		_, _, bossID = EJ_GetEncounterInfoByIndex(bossIndex);
	end
end

local function SkinOverviewInfo(self, _, index)
	local header = self.overviews[index]
	if not header.isSkinned then

		header.descriptionBG:SetAlpha(0)
		header.descriptionBGBottom:SetAlpha(0)
		for i = 4, 18 do
			select(i, header.button:GetRegions()):SetTexture()
		end

		S:HandleButton(header.button)

		header.button.title:SetTextColor(unpack(E.media.rgbvaluecolor))
		header.button.title.SetTextColor = E.noop
		header.button.expandedIcon:SetTextColor(1, 1, 1)
		header.button.expandedIcon.SetTextColor = E.noop

		header.isSkinned = true
	end
end

local function SkinOverviewInfoBullets(object)
	local parent = object:GetParent()

	if parent.Bullets then
		for _, bullet in pairs(parent.Bullets) do
			if not bullet.styled then
				bullet.Text:SetTextColor(1, 1, 1)
				bullet.styled = true
			end
		end
	end
end

local function SkinAbilitiesInfo()
	local index = 1
	local header = _G["EncounterJournalInfoHeader"..index]
	while header do
		if not header.isSkinned then
			header.flashAnim.Play = E.noop

			header.descriptionBG:SetAlpha(0)
			header.descriptionBGBottom:SetAlpha(0)
			for i = 4, 18 do
				select(i, header.button:GetRegions()):SetTexture()
			end

			header.description:SetTextColor(1, 1, 1)
			header.button.title:SetTextColor(unpack(E.media.rgbvaluecolor))
			header.button.title.SetTextColor = E.noop
			header.button.expandedIcon:SetTextColor(1, 1, 1)
			header.button.expandedIcon.SetTextColor = E.noop

			S:HandleButton(header.button)

			header.button.bg = CreateFrame("Frame", nil, header.button, "BackdropTemplate")
			header.button.bg:SetTemplate()
			header.button.bg:SetOutside(header.button.abilityIcon)
			header.button.bg:SetFrameLevel(header.button.bg:GetFrameLevel() - 1)
			header.button.abilityIcon:SetTexCoord(.08, .92, .08, .92)

			header.isSkinned = true
		end

		if header.button.abilityIcon:IsShown() then
			header.button.bg:Show()
		else
			header.button.bg:Hide()
		end

		index = index + 1
		header = _G["EncounterJournalInfoHeader"..index]
	end
end


local function resultOnEnter(self)
	self.hl:Show()
end

local function resultOnLeave(self)
	self.hl:Hide()
end

local function styleSearchButton(result, index)
	local searchBox = _G.EncounterJournal.searchBox

	if index == 1 then
		result:SetPoint("TOPLEFT", searchBox, "BOTTOMLEFT", 0, 1)
		result:SetPoint("TOPRIGHT", searchBox, "BOTTOMRIGHT", -5, 1)
	else
		result:SetPoint("TOPLEFT", searchBox.searchPreview[index-1], "BOTTOMLEFT", 0, 1)
		result:SetPoint("TOPRIGHT", searchBox.searchPreview[index-1], "BOTTOMRIGHT", 0, 1)
	end

	result:SetNormalTexture("")
	result:SetPushedTexture("")
	result:SetHighlightTexture("")

	local hl = result:CreateTexture(nil, "BACKGROUND")
	hl:SetAllPoints()
	hl:SetTexture(E.media.normTex)
	hl:SetVertexColor(r, g, b, .2)
	hl:Hide()
	result.hl = hl

	result:CreateBackdrop()
	result.backdrop:SetBackdropColor(.1, .1, .1, .9)

	if result.icon then
		result:GetRegions():Hide() -- icon frame
		result.icon:SetTexCoord(unpack(E.TexCoords))
		local bg = MERS:CreateBG(result.icon)
		bg:SetDrawLayer("BACKGROUND", 1)
	end

	result:HookScript("OnEnter", resultOnEnter)
	result:HookScript("OnLeave", resultOnLeave)
end

local function listInstances()
	local instanceSelect = _G.EncounterJournal.instanceSelect

	local index = 1
	while true do
		local bu = instanceSelect.scroll.child.InstanceButtons[index]
		if not bu then return end

		bu:SetNormalTexture("")
		bu:SetHighlightTexture("")
		bu:SetPushedTexture("")
		bu.bgImage:SetDrawLayer("BACKGROUND", 1)

		local bg = MERS:CreateBG(bu.bgImage)
		bg:SetPoint("TOPLEFT", 3, -3)
		bg:SetPoint("BOTTOMRIGHT", -4, 2)
		index = index + 1
	end
end

local function SkinEJButton(button)
	button.UpLeft:SetAlpha(0)
	button.UpRight:SetAlpha(0)
	button.DownLeft:SetAlpha(0)
	button.DownRight:SetAlpha(0)
	select(5, button:GetRegions()):Hide()
	select(6, button:GetRegions()):Hide()
	MERS:Reskin(button)
end

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.encounterjournal ~= true or E.private.muiSkins.blizzard.encounterjournal ~= true then return end

	local EncounterJournal = _G.EncounterJournal
	EncounterJournal.backdrop:Styling()

	if EncounterJournal.navBar.backdrop then
		EncounterJournal.navBar.backdrop:Hide()
	end

	-- [[ SearchBox ]]
	local searchBox = EncounterJournal.searchBox

	searchBox.searchPreviewContainer.botLeftCorner:Hide()
	searchBox.searchPreviewContainer.botRightCorner:Hide()
	searchBox.searchPreviewContainer.bottomBorder:Hide()
	searchBox.searchPreviewContainer.leftBorder:Hide()
	searchBox.searchPreviewContainer.rightBorder:Hide()

	for i = 1, #searchBox.searchPreview do
		styleSearchButton(searchBox.searchPreview[i], i)
	end
	styleSearchButton(searchBox.showAllResults, 6)

	-- [[ SearchResults ]]
	local searchResults = EncounterJournal.searchResults
	searchResults:CreateBackdrop()
	searchResults.backdrop:SetBackdropColor(.15, .15, .15, .9)
	for i = 3, 11 do
		select(i, searchResults:GetRegions()):Hide()
	end

	_G.EncounterJournalSearchResultsBg:Hide()

	hooksecurefunc("EncounterJournal_SearchUpdate", function()
		local scrollFrame = searchResults.scrollFrame
		local offset = _G.HybridScrollFrame_GetOffset(scrollFrame)
		local results = scrollFrame.buttons
		local result, index

		local numResults = _G.EJ_GetNumSearchResults()

		for i = 1, #results do
			result = results[i]
			index = offset + i

			if index <= numResults then
				if not result.styled then
					result:SetNormalTexture("")
					result:SetPushedTexture("")
					result:GetRegions():Hide()

					result.resultType:SetTextColor(1, 1, 1)
					result.path:SetTextColor(1, 1, 1)

					MERS:CreateBG(result.icon)

					result.styled = true
				end

				if result.icon:GetTexCoord() == 0 then
					result.icon:SetTexCoord(unpack(E.TexCoords))
				end
			end
		end
	end)

	hooksecurefunc(searchResults.scrollFrame, "update", function(self)
		for i = 1, #self.buttons do
			local result = self.buttons[i]

			if result.icon:GetTexCoord() == 0 then
				result.icon:SetTexCoord(unpack(E.TexCoords))
			end
		end
	end)

	--[[ NavBar ]]
	EncounterJournal.navBar:SetWidth(550)
	EncounterJournal.navBar:SetPoint("TOPLEFT", 20, -22)

	--[[ Inset ]]
	EncounterJournal.inset:DisableDrawLayer("BORDER")
	EncounterJournal.inset.Bg:Hide()

	--[[ InstanceSelect ]]
	local instanceSelect = EncounterJournal.instanceSelect
	instanceSelect.bg:Hide()

	hooksecurefunc("EncounterJournal_ListInstances", listInstances)
	listInstances()

	--[[ EncounterFrame ]]
	local encounter = EncounterJournal.encounter

	--[[ InstanceFrame ]]
	_G.EncounterJournalEncounterFrameInstanceFrameLoreScrollFrameScrollChildLore:SetTextColor(1, 1, 1)

	--[[ Info ]]
	local info = encounter.info
	info:DisableDrawLayer("BACKGROUND")

	info.encounterTitle:SetTextColor(1, 1, 1)

	SkinEJButton(info.difficulty)

	MERS:Reskin(info.reset)

	info.detailsScroll.child.description:SetTextColor(1, 1, 1)

	info.overviewScroll.child.loreDescription:SetTextColor(1, 1, 1)
	info.overviewScroll.child.header:Hide()
	_G.EncounterJournalEncounterFrameInfoOverviewScrollFrameScrollChildTitle:SetFontObject("GameFontNormalLarge")
	_G.EncounterJournalEncounterFrameInfoOverviewScrollFrameScrollChildTitle:SetTextColor(1, 1, 1)
	info.overviewScroll.child.overviewDescription.Text:SetTextColor(1, 1, 1)

	SkinEJButton(info.lootScroll.filter)
	SkinEJButton(info.lootScroll.slotFilter)

	local encLoot = info.lootScroll.buttons
	for i = 1, #encLoot do
		local item = encLoot[i]

		item.boss:SetTextColor(1, 1, 1)
		item.slot:SetTextColor(1, 1, 1)
		item.armorType:SetTextColor(1, 1, 1)

		item.bossTexture:SetAlpha(0)
		item.bosslessTexture:SetAlpha(0)

		item.icon:SetTexCoord(unpack(E.TexCoords))
		item.icon:SetDrawLayer("OVERLAY")
		MERS:CreateBG(item.icon)

		if item.backdrop then
			item.backdrop:Hide()
		end

		local bg = CreateFrame("Frame", nil, item)
		bg:SetPoint("TOPLEFT")
		bg:SetPoint("BOTTOMRIGHT", 0, 1)
		bg:SetFrameLevel(item:GetFrameLevel() - 1)
		MERS:CreateBD(bg, .25)

		MERS:CreateGradient(bg)
	end

	info.model.dungeonBG:Hide()
	_G.EncounterJournalEncounterFrameInfoModelFrameShadow:Hide()
	MERS:CreateBDFrame(_G.EncounterJournalEncounterFrameInfoModelFrame, .25)

	-- [[ Encounter Info Frame ]]
	local EncounterInfo = EncounterJournal.encounter.info

	_G.EncounterJournalEncounterFrameInfoBG:Kill()
	if EncounterInfo.backdrop then
		EncounterInfo.backdrop:Hide()
	end

	 --Tabs
	local tabs = {
		EncounterInfo.overviewTab,
		EncounterInfo.lootTab,
		EncounterInfo.bossTab,
		EncounterInfo.modelTab,
	}

	for _, tab in pairs(tabs) do
		if tab.backdrop then
			tab.backdrop:SetTemplate("Transparent")
			tab.backdrop:Styling()
		end
	end

	--Encounter Instance Frame
	local EncounterInstance = EncounterJournal.encounter.instance
	EncounterInstance.loreScroll.child.lore:SetTextColor(1, 1, 1)

	_G.EncounterJournalEncounterFrameInstanceFrame.titleBG:SetAlpha(0)

	-- [[ Loot ]]
	local LootJournal = _G["EncounterJournal"].LootJournal
	LootJournal:DisableDrawLayer("BACKGROUND")

	-- ToDo: Update me

	-- [[ SuggestFrame ]]
	local suggestFrame = EncounterJournal.suggestFrame
	do
		-- Suggestion 1
		local suggestion = suggestFrame.Suggestion1

		suggestion.bg:Hide()

		MERS:CreateBD(suggestion, .25)
		MERS:CreateGradient(suggestion)

		suggestion.icon:SetPoint("TOPLEFT", 135, -15)

		local centerDisplay = suggestion.centerDisplay

		centerDisplay.title.text:SetTextColor(1, 1, 1)
		centerDisplay.description.text:SetTextColor(.9, .9, .9)

		MERS:Reskin(suggestion.button)

		local reward = suggestion.reward

		reward.text:SetTextColor(.9, .9, .9)
		reward.iconRing:Hide()
		reward.iconRingHighlight:SetTexture("")

		-- Suggestion 2 and 3
		for i = 2, 3 do
			suggestion = suggestFrame["Suggestion"..i]

			suggestion.bg:Hide()

			MERS:CreateBD(suggestion, .25)
			MERS:CreateGradient(suggestion)

			suggestion.icon:SetPoint("TOPLEFT", 10, -10)

			centerDisplay = suggestion.centerDisplay

			centerDisplay:ClearAllPoints()
			centerDisplay:SetPoint("TOPLEFT", 85, -10)
			centerDisplay.title.text:SetTextColor(1, 1, 1)
			centerDisplay.description.text:SetTextColor(.9, .9, .9)

			reward = suggestion.reward

			reward.iconRing:Hide()
			reward.iconRingHighlight:SetTexture("")
		end
	end

	hooksecurefunc("EJSuggestFrame_RefreshDisplay", function()
		local self = suggestFrame

		if #self.suggestions > 0 then
			local suggestion = self.Suggestion1
			local data = self.suggestions[1]

			suggestion.iconRing:Hide()

			if suggestion and data then
				suggestion.icon:SetMask("")
				suggestion.icon:SetTexture(data.iconPath)
				suggestion.icon:SetTexCoord(unpack(E.TexCoords))
			end
		end

		if #self.suggestions > 1 then
			for i = 2, #self.suggestions do
				local suggestion = self["Suggestion"..i]
				if not suggestion then break end

				local data = self.suggestions[i]

				suggestion.iconRing:Hide()

				if data.iconPath then
					suggestion.icon:SetMask("")
					suggestion.icon:SetTexture(data.iconPath)
					suggestion.icon:SetTexCoord(unpack(E.TexCoords))
				end
			end
		end
	end)

	hooksecurefunc("EJSuggestFrame_UpdateRewards", function(suggestion)
		local rewardData = suggestion.reward.data
		if rewardData then
			local texture = rewardData.itemIcon or rewardData.currencyIcon or [[Interface\Icons\achievement_guildperk_mobilebanking]]
			suggestion.reward.icon:SetMask("")
			suggestion.reward.icon:SetTexture(texture)

			if not suggestion.reward.icon.backdrop then
				suggestion.reward.icon:CreateBackdrop()
				suggestion.reward.icon.backdrop:SetOutside(suggestion.reward.icon)
			end

			if rewardData.itemID then
				local quality = select(3, GetItemInfo(rewardData.itemID))
				if quality and quality > 1 then
					r, g, b = GetItemQualityColor(quality)
				end
			end
			suggestion.reward.icon.backdrop:SetBackdropBorderColor(r, g, b)
		end
	end)

	--Overview Info (From Aurora)
	hooksecurefunc("EncounterJournal_SetUpOverview", SkinOverviewInfo)

	--Overview Info Bullets (From Aurora)
	hooksecurefunc("EncounterJournal_SetBullets", SkinOverviewInfoBullets)

	--Abilities Info (From Aurora)
	hooksecurefunc("EncounterJournal_ToggleHeaders", SkinAbilitiesInfo)

	--Boss selection buttons
	hooksecurefunc("EncounterJournal_DisplayInstance", SkinBosses)
end

S:AddCallbackForAddon("Blizzard_EncounterJournal", "mUIEncounterJournal", LoadSkin)
