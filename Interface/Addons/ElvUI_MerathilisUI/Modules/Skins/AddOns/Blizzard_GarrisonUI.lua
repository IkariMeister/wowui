local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')

-- Cache global variables
-- Lua functions
local _G = _G
local ipairs, pairs, select, unpack = ipairs, pairs, select, unpack
-- WoW API
local CreateFrame = CreateFrame
local hooksecurefunc = hooksecurefunc
local IsAddOnLoaded = IsAddOnLoaded
local UnitFactionGroup = UnitFactionGroup
local C_Timer_After = C_Timer.After
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function UpdateFollowerList(self)
	local followerFrame = self:GetParent()
	local scrollFrame = followerFrame.FollowerList.listScroll
	local buttons = scrollFrame.buttons

	for i = 1, #buttons do
		local button = buttons[i].Follower
		local portrait = button.PortraitFrame

		if not button.restyled then
			button.BG:Hide()
			button.Selection:SetTexture("")
			button.AbilitiesBG:SetTexture("")
			button.bg = MERS:CreateBDFrame(button, .25)

			local hl = button:GetHighlightTexture()
			hl:SetColorTexture(r, g, b, .1)
			hl:ClearAllPoints()
			hl:SetInside(button.bg)

			if portrait then
				portrait:ClearAllPoints()
				portrait:SetPoint("TOPLEFT", 4, -1)
			end

			if button.BusyFrame then
				button.BusyFrame:SetInside(button.bg)
			end

			button.restyled = true
		end

		if button.Selection:IsShown() then
			button.bg:SetBackdropColor(r, g, b, .2)
		else
			button.bg:SetBackdropColor(0, 0, 0, .25)
		end
	end
end

-- [[ Garrison system ]]
local function ReskinMissionPage(self)
	self:StripTextures()
	self.StartMissionButton.Flash:SetTexture("")
	MERS:Reskin(self.StartMissionButton)
	self.CloseButton:ClearAllPoints()
	self.CloseButton:SetPoint("TOPRIGHT", -10, -5)
	select(4, self.Stage:GetRegions()):Hide()
	select(5, self.Stage:GetRegions()):Hide()

	if self.Followers then
		for i = 1, 3 do
			local follower = self.Followers[i]
			follower:GetRegions():Hide()
			MERS:CreateBD(follower, .25)
			MERS:ReskinGarrisonPortrait(follower.PortraitFrame)
			follower.PortraitFrame:ClearAllPoints()
			follower.PortraitFrame:SetPoint("TOPLEFT", 0, -3)
		end
	end

	if self.RewardsFrame then
		for i = 1, 10 do
			select(i, self.RewardsFrame:GetRegions()):Hide()
		end
		MERS:CreateBD(self.RewardsFrame, .25)

		local item = self.RewardsFrame.OvermaxItem
		item.Icon:SetDrawLayer("BORDER", 1)
		MERS:ReskinIcon(item.Icon)
	end

	local env = self.Stage.MissionEnvIcon
	env.Texture:SetDrawLayer("BORDER", 1)
	MERS:ReskinIcon(env.Texture)

	if self.CostFrame then
		self.CostFrame.CostIcon:SetTexCoord(unpack(E.TexCoords))
	end
end

local function ReskinMissionList(self)
	local buttons = self.listScroll.buttons
	for i = 1, #buttons do
		local button = buttons[i]
		if not button.styled then
			local rareOverlay = button.RareOverlay
			local rareText = button.RareText
			button:StripTextures()
			MERS:CreateBD(button, .25)
			MERS:CreateGradient(button)

			if button.CompleteCheck then
				button.CompleteCheck:SetAtlas("Adventures-Checkmark")
			end

			if rareText then
				rareText:ClearAllPoints()
				rareText:SetPoint("BOTTOMLEFT", button, 20, 10)
			end
			if rareOverlay then
				rareOverlay:SetDrawLayer("BACKGROUND")
				rareOverlay:SetTexture(E["media"].normTex)
				rareOverlay:SetAllPoints()
				rareOverlay:SetVertexColor(.098, .537, .969, .2)
			end

			if button.Overlay and button.Overlay.Overlay then
				button.Overlay.Overlay:SetAllPoints()
			end

			button.styled = true
		end
	end
end

local function ReskinMissionTabs(self)
	for i = 1, 2 do
		local tab = _G[self:GetName().."Tab"..i]
		if tab then
			tab:StripTextures()
			tab:CreateBackdrop('Transparent')
			if i == 1 then
				tab.backdrop:SetBackdropColor(r, g, b, .2)
			end
		end
	end
end

local function ReskinMissionComplete(self)
	local missionComplete = self.MissionComplete
	local bonusRewards = missionComplete.BonusRewards
		if bonusRewards then
		select(11, bonusRewards:GetRegions()):SetTextColor(1, .8, 0)
		bonusRewards.Saturated:StripTextures()
		for i = 1, 9 do
			select(i, bonusRewards:GetRegions()):SetAlpha(0)
		end
		MERS:CreateBD(bonusRewards)
	end

	if missionComplete.NextMissionButton then
		MERS:Reskin(missionComplete.NextMissionButton)
	end

	if missionComplete.CompleteFrame then
		missionComplete:StripTextures()
		local bg = MERS:CreateBDFrame(missionComplete, .25)
		bg:SetPoint("TOPLEFT", 3, 2)
		bg:SetPoint("BOTTOMRIGHT", -3, -10)

		missionComplete.CompleteFrame:StripTextures()
	end
end

local function ReskinGarrMaterial(self)
	self.MaterialFrame.Icon:SetTexCoord(unpack(E.TexCoords))
	self.MaterialFrame:GetRegions():Hide()
	local bg = MERS:CreateBDFrame(self.MaterialFrame, .25)
	bg:SetPoint("TOPLEFT", 5, -5)
	bg:SetPoint("BOTTOMRIGHT", -5, 6)
end

local function UpdateSpellAbilities(self, followerInfo)
	local autoSpellInfo = followerInfo.autoSpellAbilities
	for _ in ipairs(autoSpellInfo) do
		local abilityFrame = self.autoSpellPool:Acquire()
		if not abilityFrame.styled then
			S:HandleIcon(abilityFrame.Icon)
			if abilityFrame.SpellBorder then
				abilityFrame.SpellBorder:Hide()
			end

			abilityFrame.styled = true
		end
	end
end

local function ReskinMissionFrame(self)
	self:StripTextures()
	self:CreateBackdrop('Transparent')
	self.GarrCorners:Hide()

	if self.OverlayElements then self.OverlayElements:SetAlpha(0) end
	if self.ClassHallIcon then self.ClassHallIcon:Hide() end
	if self.TitleScroll then
		self.TitleScroll:StripTextures()
		select(4, self.TitleScroll:GetRegions()):SetTextColor(1, .8, 0)
	end
	if self.MapTab then self.MapTab.ScrollContainer.Child.TiledBackground:Hide() end

	ReskinMissionComplete(self)
	ReskinMissionPage(self.MissionTab.MissionPage)
	self.FollowerTab:StripTextures()
	hooksecurefunc(self.FollowerTab, "UpdateCombatantStats", UpdateSpellAbilities)

	for _, item in pairs({self.FollowerTab.ItemWeapon, self.FollowerTab.ItemArmor}) do
		if item then
			local icon = item.Icon
			item.Border:Hide()
			S:HandleIcon(icon)

			local bg = MERS:CreateBDFrame(item, .25)
			bg:SetPoint("TOPLEFT", 41, -1)
			bg:SetPoint("BOTTOMRIGHT", 0, 1)
		end
	end

	local missionList = self.MissionTab.MissionList
	missionList:StripTextures()
	ReskinGarrMaterial(missionList)
	ReskinMissionTabs(missionList)
	hooksecurefunc(missionList, "Update", ReskinMissionList)

	local FollowerList = self.FollowerList
	FollowerList:StripTextures()

	ReskinGarrMaterial(FollowerList)
	hooksecurefunc(FollowerList, "UpdateData", UpdateFollowerList)
end

local function UpdateSpellAbilities(spell, followerInfo)
	local autoSpellInfo = followerInfo.autoSpellAbilities
	for _ in ipairs(autoSpellInfo) do
		local abilityFrame = spell.autoSpellPool:Acquire()
		if not abilityFrame.IsSkinned then
			S:HandleIcon(abilityFrame.Icon, true)

			if abilityFrame.SpellBorder then
				abilityFrame.SpellBorder:Hide()
			end
			abilityFrame.IsSkinned = true
		end
	end
end

local function ReskinWidgetFont(font, r, g, b)
	if not font then return end
	font:FontTemplate(nil, 12, 'OUTLINE') -- Must be outline!
	font:SetTextColor(r, g, b)
end

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.orderhall ~= true or E.private.skins.blizzard.garrison ~= true or E.private.muiSkins.blizzard.garrison ~= true then return end

	-- Building frame
	local GarrisonBuildingFrame = _G.GarrisonBuildingFrame
	GarrisonBuildingFrame:StripTextures()
	MERS:CreateBD(GarrisonBuildingFrame)
	GarrisonBuildingFrame.GarrCorners:Hide()
	if GarrisonBuildingFrame.backdrop then GarrisonBuildingFrame.backdrop:Hide() end
	GarrisonBuildingFrame:Styling()

	-- Tutorial button
	local MainHelpButton = GarrisonBuildingFrame.MainHelpButton
	MainHelpButton.Ring:Hide()
	MainHelpButton:SetPoint("TOPLEFT", GarrisonBuildingFrame, "TOPLEFT", -12, 12)

	-- Building list
	local BuildingList = GarrisonBuildingFrame.BuildingList

	BuildingList:DisableDrawLayer("BORDER")
	BuildingList.MaterialFrame.Icon:SetTexCoord(unpack(E.TexCoords))
	BuildingList.MaterialFrame:GetRegions():Hide()

	local bg = MERS:CreateBDFrame(BuildingList.MaterialFrame, .25)
	bg:SetPoint("TOPLEFT", 5, -5)
	bg:SetPoint("BOTTOMRIGHT", -5, 6)

	for i = 1, _G.GARRISON_NUM_BUILDING_SIZES do
		local tab = BuildingList["Tab"..i]

		tab:GetNormalTexture():SetAlpha(0)

		local bg = CreateFrame("Frame", nil, tab, 'BackdropTemplate')
		bg:SetPoint("TOPLEFT", 6, -7)
		bg:SetPoint("BOTTOMRIGHT", -6, 7)
		bg:SetFrameLevel(tab:GetFrameLevel()-1)
		MERS:CreateBD(bg, .25)
		tab.bg = bg

		local hl = tab:GetHighlightTexture()
		hl:SetColorTexture(r, g, b, .1)
		hl:ClearAllPoints()
		hl:SetPoint("TOPLEFT", bg, 1, -1)
		hl:SetPoint("BOTTOMRIGHT", bg, -1, 1)
	end

	hooksecurefunc("GarrisonBuildingList_SelectTab", function(tab)
		local list = GarrisonBuildingFrame.BuildingList

		for i = 1, _G.GARRISON_NUM_BUILDING_SIZES do
			local otherTab = list["Tab"..i]
			if i ~= tab:GetID() then
				otherTab.bg:SetBackdropColor(0, 0, 0, .25)
			end
		end
		tab.bg:SetBackdropColor(r, g, b, .2)

		for _, button in pairs(list.Buttons) do
			if not button.styled then
				button.BG:Hide()

				MERS:ReskinIcon(button.Icon)

				local bg = CreateFrame("Frame", nil, button)
				bg:SetPoint("TOPLEFT", 44, -5)
				bg:SetPoint("BOTTOMRIGHT", 0, 6)
				bg:SetFrameLevel(button:GetFrameLevel()-1)
				MERS:CreateBD(bg, .25)

				button.SelectedBG:SetColorTexture(r, g, b, .2)
				button.SelectedBG:ClearAllPoints()
				button.SelectedBG:SetPoint("TOPLEFT", bg, 1, -1)
				button.SelectedBG:SetPoint("BOTTOMRIGHT", bg, -1, 1)

				local hl = button:GetHighlightTexture()
				hl:SetColorTexture(r, g, b, .1)
				hl:ClearAllPoints()
				hl:SetPoint("TOPLEFT", bg, 1, -1)
				hl:SetPoint("BOTTOMRIGHT", bg, -1, 1)

				button.styled = true
			end
		end
	end)

	-- Building level tooltip
	local BuildingLevelTooltip = GarrisonBuildingFrame.BuildingLevelTooltip

	for i = 1, 9 do
		select(i, BuildingLevelTooltip:GetRegions()):Hide()
	end
	BuildingLevelTooltip:Styling()

	-- Follower list
	local FollowerList = GarrisonBuildingFrame.FollowerList

	FollowerList:DisableDrawLayer("BACKGROUND")
	FollowerList:DisableDrawLayer("BORDER")

	FollowerList:ClearAllPoints()
	FollowerList:SetPoint("BOTTOMLEFT", 24, 34)

	-- Info box
	local InfoBox = GarrisonBuildingFrame.InfoBox
	local TownHallBox = GarrisonBuildingFrame.TownHallBox

	for i = 1, 25 do
		select(i, InfoBox:GetRegions()):Hide()
		select(i, TownHallBox:GetRegions()):Hide()
	end

	MERS:CreateBD(InfoBox, .25)
	MERS:CreateBD(TownHallBox, .25)
	GarrisonBuildingFrame.MapFrame.TownHall.TownHallName:SetTextColor(1, .8, 0)

	do
		local FollowerPortrait = InfoBox.FollowerPortrait

		FollowerPortrait:SetPoint("BOTTOMLEFT", 230, 10)
		FollowerPortrait.RemoveFollowerButton:ClearAllPoints()
		FollowerPortrait.RemoveFollowerButton:SetPoint("TOPRIGHT", 4, 4)
	end

	-- Confirmation popup
	local Confirmation = GarrisonBuildingFrame.Confirmation

	Confirmation:GetRegions():Hide()
	MERS:CreateBD(Confirmation)

	-- [[ Capacitive display frame ]]
	local GarrisonCapacitiveDisplayFrame = _G.GarrisonCapacitiveDisplayFrame

	_G.GarrisonCapacitiveDisplayFrameLeft:Hide()
	_G.GarrisonCapacitiveDisplayFrameMiddle:Hide()
	_G.GarrisonCapacitiveDisplayFrameRight:Hide()
	MERS:CreateBD(GarrisonCapacitiveDisplayFrame.Count, .25)
	GarrisonCapacitiveDisplayFrame.Count:SetWidth(38)
	GarrisonCapacitiveDisplayFrame.Count:SetTextInsets(3, 0, 0, 0)
	GarrisonCapacitiveDisplayFrame.IncrementButton:ClearAllPoints()
	GarrisonCapacitiveDisplayFrame.IncrementButton:Point('LEFT', GarrisonCapacitiveDisplayFrame.Count, 'RIGHT', 4, 0)

	GarrisonCapacitiveDisplayFrame:Styling()

	-- Capacitive display
	local CapacitiveDisplay = GarrisonCapacitiveDisplayFrame.CapacitiveDisplay
	CapacitiveDisplay.IconBG:SetAlpha(0)

	do
		local icon = CapacitiveDisplay.ShipmentIconFrame.Icon
		icon:SetTexCoord(unpack(E.TexCoords))
		MERS:CreateBG(icon)
	end

	local reagentIndex = 1
	hooksecurefunc("GarrisonCapacitiveDisplayFrame_Update", function()
		local reagents = CapacitiveDisplay.Reagents

		local reagent = reagents[reagentIndex]
		while reagent do
			reagent.NameFrame:SetAlpha(0)
			if reagent.backdrop then reagent.backdrop:Hide() end

			reagent.Icon:SetTexCoord(unpack(E.TexCoords))
			reagent.Icon:SetDrawLayer("BORDER")
			MERS:CreateBG(reagent.Icon)

			local bg = CreateFrame("Frame", nil, reagent, 'BackdropTemplate')
			bg:SetPoint("TOPLEFT")
			bg:SetPoint("BOTTOMRIGHT", 0, 2)
			bg:SetFrameLevel(reagent:GetFrameLevel() - 1)
			MERS:CreateBD(bg, .25)

			reagentIndex = reagentIndex + 1
			reagent = reagents[reagentIndex]
		end
	end)

	-- [[ Landing page ]]
	local GarrisonLandingPage = _G.GarrisonLandingPage

	for i = 1, 10 do
		select(i, GarrisonLandingPage:GetRegions()):Hide() -- Parchment
	end

	GarrisonLandingPage.backdrop:Styling()

	_G.GarrisonLandingPageTab1:ClearAllPoints()
	_G.GarrisonLandingPageTab1:SetPoint("TOPLEFT", GarrisonLandingPage, "BOTTOMLEFT", 70, 2)

	-- Report
	local Report = GarrisonLandingPage.Report
	local scrollFrame = Report.List.listScroll

	local buttons = scrollFrame.buttons
	for i = 1, #buttons do
		local button = buttons[i]
		button.BG:Hide()

		local bg = CreateFrame("Frame", nil, button, 'BackdropTemplate')
		bg:SetPoint("TOPLEFT")
		bg:SetPoint("BOTTOMRIGHT", 0, 1)
		bg:SetFrameLevel(button:GetFrameLevel() - 1)

		for _, reward in pairs(button.Rewards) do
			reward:GetRegions():Hide()
			reward.Icon:SetTexCoord(unpack(E.TexCoords))
			reward.IconBorder:SetAlpha(0)
			MERS:CreateBG(reward.Icon)
			reward:ClearAllPoints()
			reward:SetPoint("TOPRIGHT", -4, -4)
		end

		MERS:CreateBD(bg, .25)
		MERS:CreateGradient(bg)
	end

	for _, tab in pairs({Report.InProgress, Report.Available}) do
		tab:SetHighlightTexture("")
		tab.Text:ClearAllPoints()
		tab.Text:SetPoint("CENTER")

		local bg = CreateFrame("Frame", nil, tab, 'BackdropTemplate')
		bg:SetFrameLevel(tab:GetFrameLevel() - 1)
		bg:CreateBackdrop('Transparent')
		MERS:CreateGradient(bg.backdrop)

		local selectedTex = bg:CreateTexture(nil, "BACKGROUND")
		selectedTex:SetAllPoints()
		selectedTex:SetColorTexture(r, g, b, .2)
		selectedTex:Hide()
		tab.selectedTex = selectedTex

		if tab == Report.InProgress then
			bg:SetPoint("TOPLEFT", 5, 0)
			bg:SetPoint("BOTTOMRIGHT")
		else
			bg:SetPoint("TOPLEFT")
			bg:SetPoint("BOTTOMRIGHT", -7, 0)
		end
	end

	hooksecurefunc("GarrisonLandingPageReport_SetTab", function(self)
		local unselectedTab = Report.unselectedTab
		unselectedTab:SetHeight(36)
		unselectedTab:SetNormalTexture("")
		unselectedTab.selectedTex:Hide()
		self:SetNormalTexture("")
		self.selectedTex:Show()
	end)

	local FollowerList = GarrisonLandingPage.FollowerList

	FollowerList:GetRegions():Hide()
	select(2, FollowerList:GetRegions()):Hide()

	-- Ship follower list
	local FollowerList = GarrisonLandingPage.ShipFollowerList

	FollowerList:GetRegions():Hide()
	select(2, FollowerList:GetRegions()):Hide()

	-- [[ Mission UI ]]
	local GarrisonMissionFrame = _G.GarrisonMissionFrame
	if GarrisonMissionFrame.backdrop then GarrisonMissionFrame.backdrop:Hide() end
	MERS:CreateBD(GarrisonMissionFrame, .25)
	ReskinMissionFrame(GarrisonMissionFrame)
	GarrisonMissionFrame:Styling()

	hooksecurefunc("GarrisonMissonListTab_SetSelected", function(tab, isSelected)
		if isSelected then
			tab.backdrop:SetBackdropColor(r, g, b, .2)
		else
			tab.backdrop:SetBackdropColor(0, 0, 0, .25)
		end
	end)

	hooksecurefunc("GarrisonFollowerButton_AddAbility", function(self, index)
		local ability = self.Abilities[index]

		if not ability.styled then
			local icon = ability.Icon
			icon:SetSize(19, 19)
			MERS:ReskinIcon(icon)

			ability.styled = true
		end
	end)

	hooksecurefunc("GarrisonMissionPage_SetReward", function(frame)
		if not frame.bg then
			frame.Icon:SetTexCoord(unpack(E.TexCoords))
			MERS:CreateBDFrame(frame.Icon)
			frame.BG:SetAlpha(0)
			frame.bg = MERS:CreateBDFrame(frame.BG, .25)
			frame.IconBorder:SetScale(.0001)
		end
	end)

	hooksecurefunc(_G.GarrisonMission, "UpdateMissionParty", function(_, followers)
		for followerIndex = 1, #followers do
			local followerFrame = followers[followerIndex]
			if followerFrame.info then
				for i = 1, #followerFrame.Counters do
					local counter = followerFrame.Counters[i]
					if not counter.styled then
						MERS:ReskinIcon(counter.Icon)
						counter.styled = true
					end
				end
			end
		end
	end)

	hooksecurefunc(_G.GarrisonMission, "SetEnemies", function(_, missionPage, enemies)
		for i = 1, #enemies do
			local frame = missionPage.Enemies[i]
			if frame:IsShown() and not frame.styled then
				for j = 1, #frame.Mechanics do
					local mechanic = frame.Mechanics[j]
					MERS:ReskinIcon(mechanic.Icon)
				end
				frame.styled = true
			end
		end
	end)

	hooksecurefunc(_G.GarrisonMission, "MissionCompleteInitialize", function(self, missionList, index)
		local mission = missionList[index]
		if not mission then return end

		for i = 1, #mission.followers do
			local frame = self.MissionComplete.Stage.FollowersFrame.Followers[i]
			if frame.PortraitFrame then
				if not frame.bg then
					frame.PortraitFrame:ClearAllPoints()
					frame.PortraitFrame:SetPoint("TOPLEFT", 0, -10)

					local oldBg = frame:GetRegions()
					oldBg:Hide()
					frame.bg = MERS:CreateBDFrame(oldBg)
					frame.bg:SetPoint("TOPLEFT", frame.PortraitFrame, -1, 1)
					frame.bg:SetPoint("BOTTOMRIGHT", -10, 8)
				end
			end
		end
	end)

	-- [[ Recruiter frame ]]
	local GarrisonRecruiterFrame = _G.GarrisonRecruiterFrame

	-- Unavailable frame
	local UnavailableFrame = GarrisonRecruiterFrame.UnavailableFrame
	MERS:Reskin(UnavailableFrame:GetChildren())

	-- [[ Recruiter select frame ]]
	local GarrisonRecruitSelectFrame = _G.GarrisonRecruitSelectFrame

	for i = 1, 14 do
		select(i, GarrisonRecruitSelectFrame:GetRegions()):Hide()
	end
	GarrisonRecruitSelectFrame.TitleText:Show()
	GarrisonRecruitSelectFrame.GarrCorners:Hide()
	MERS:CreateBD(GarrisonRecruitSelectFrame)

	-- Follower list
	local FollowerList = GarrisonRecruitSelectFrame.FollowerList

	FollowerList:DisableDrawLayer("BORDER")

	-- Follower selection
	local FollowerSelection = GarrisonRecruitSelectFrame.FollowerSelection

	FollowerSelection:DisableDrawLayer("BORDER")
	for i = 1, 3 do
		local recruit = FollowerSelection["Recruit"..i]
		MERS:Reskin(recruit.HireRecruits)
	end

	-- [[ Monuments ]]
	local GarrisonMonumentFrame = _G.GarrisonMonumentFrame

	GarrisonMonumentFrame.Background:Hide()
	MERS:CreateBD(GarrisonMonumentFrame)
	GarrisonMonumentFrame:Styling()

	-- [[ Shipyard ]]
	local GarrisonShipyardFrame = _G.GarrisonShipyardFrame

	for i = 1, 14 do
		select(i, GarrisonShipyardFrame.BorderFrame:GetRegions()):Hide()
	end

	GarrisonShipyardFrame.BorderFrame.TitleText:Show()
	GarrisonShipyardFrame.BorderFrame.GarrCorners:Hide()
	GarrisonShipyardFrame.BackgroundTile:Hide()
	if GarrisonShipyardFrame.backdrop then GarrisonShipyardFrame.backdrop:Hide() end
	MERS:CreateBD(GarrisonShipyardFrame, .25)
	GarrisonShipyardFrame:Styling()

	_G.GarrisonShipyardFrameFollowers:GetRegions():Hide()
	select(2, _G.GarrisonShipyardFrameFollowers:GetRegions()):Hide()
	_G.GarrisonShipyardFrameFollowers:DisableDrawLayer("BORDER")

	local shipyardTab = GarrisonShipyardFrame.FollowerTab
	shipyardTab:DisableDrawLayer("BORDER")

	MERS:ReskinTab(_G.GarrisonShipyardFrameTab1)
	MERS:ReskinTab(_G.GarrisonShipyardFrameTab2)

	local shipyardMission = GarrisonShipyardFrame.MissionTab.MissionPage
	shipyardMission:StripTextures()
	MERS:Reskin(shipyardMission.StartMissionButton)

	local smbg = MERS:CreateBDFrame(shipyardMission.Stage)
	smbg:SetPoint("TOPLEFT", 4, 1)
	smbg:SetPoint("BOTTOMRIGHT", -4, -1)

	for i = 1, 10 do
		select(i, shipyardMission.RewardsFrame:GetRegions()):Hide()
	end
	MERS:CreateBD(shipyardMission.RewardsFrame, .25)

	GarrisonShipyardFrame.MissionCompleteBackground:GetRegions():Hide()
	GarrisonShipyardFrame.MissionTab.MissionList.CompleteDialog:GetRegions():Hide()
	MERS:Reskin(GarrisonShipyardFrame.MissionTab.MissionList.CompleteDialog.BorderFrame.ViewButton)
	select(11, GarrisonShipyardFrame.MissionComplete.BonusRewards:GetRegions()):SetTextColor(1, .8, 0)
	MERS:Reskin(GarrisonShipyardFrame.MissionComplete.NextMissionButton)

	-- [[ Orderhall UI]]

	local OrderHallMissionFrame = _G.OrderHallMissionFrame
	if OrderHallMissionFrame.backdrop then OrderHallMissionFrame.backdrop:Hide() end
	MERS:CreateBD(OrderHallMissionFrame, .25)
	ReskinMissionFrame(OrderHallMissionFrame)
	OrderHallMissionFrame:Styling()

	-- CombatAlly MissionFrame
	local combatAlly = _G.OrderHallMissionFrameMissions.CombatAllyUI
	local portraitFrame = combatAlly.InProgress.PortraitFrame
	local portrait = combatAlly.InProgress.PortraitFrame.Portrait
	local portraitRing = combatAlly.InProgress.PortraitFrame.PortraitRing
	local portraitRingQuality = combatAlly.InProgress.PortraitFrame.PortraitRingQuality
	local levelBorder = combatAlly.InProgress.PortraitFrame.LevelBorder
	combatAlly:StripTextures()
	MERS:CreateBD(combatAlly, .25)

	if portrait and not portrait.IsSkinned then
		portraitFrame:CreateBackdrop("Default")
		portraitFrame.backdrop:SetPoint("TOPLEFT", portrait, "TOPLEFT", -1, 1)
		portraitFrame.backdrop:SetPoint("BOTTOMRIGHT", portrait, "BOTTOMRIGHT", 1, -1)
		portrait:ClearAllPoints()
		portrait:SetPoint("TOPLEFT", 1, -1)
		portrait:SetTexCoord(unpack(E.TexCoords))
		portraitRing:SetAlpha(0)
		portraitRingQuality:SetAlpha(0)
		levelBorder:SetAlpha(0)

		portrait.IsSkinned = true
	end

	-- CombatAlly ZoneSupport Frame
	_G.OrderHallMissionFrame.MissionTab.ZoneSupportMissionPage:StripTextures()
	MERS:CreateBD(_G.OrderHallMissionFrame.MissionTab.ZoneSupportMissionPage, .5)
	local combatAlly = _G.OrderHallMissionFrame.MissionTab.ZoneSupportMissionPage.Follower1
	local portraitFrame = combatAlly.PortraitFrame
	local portrait = portraitFrame.Portrait
	local portraitRing = portraitFrame.PortraitRing
	local portraitRingQuality = portraitFrame.PortraitRingQuality
	local levelBorder = portraitFrame.LevelBorder

	combatAlly:StripTextures()

	if portrait and not portrait.IsSkinned then
		portrait:ClearAllPoints()
		portrait:SetPoint("TOPLEFT", 1, -1)
		portrait:SetTexCoord(unpack(E.TexCoords))
		portraitRing:Hide()
		portraitRingQuality:SetAlpha(0)
		levelBorder:SetAlpha(0)

		portrait.IsSkinned = true
	end

	 --Missions
	local Mission = _G.OrderHallMissionFrameMissions
	Mission.CompleteDialog:StripTextures()
	Mission.CompleteDialog:CreateBackdrop("Transparent")

	local MissionPage = _G.OrderHallMissionFrame.MissionTab.MissionPage
	for i = 1, 10 do
		select(i, MissionPage.RewardsFrame:GetRegions()):Hide()
	end
	MERS:CreateBD(MissionPage.RewardsFrame, .25)

	-- [[ BFA Mission UI]]
	local BFAMissionFrame = _G.BFAMissionFrame
	BFAMissionFrame.backdrop:Styling()
	ReskinMissionFrame(BFAMissionFrame)

	-- [[ BFA Missions ]]
	local MissionFrame = _G.BFAMissionFrame

	for i, v in ipairs(_G.BFAMissionFrame.MissionTab.MissionList.listScroll.buttons) do
		local Button = _G["BFAMissionFrameMissionsListScrollFrameButton"..i]
		if Button and not Button.skinned then
			Button:StripTextures()
			MERS:CreateBD(Button, .25)
			MERS:CreateGradient(Button)
			MERS:Reskin(Button, true)
			Button.LocBG:SetAlpha(0)

			Button.isSkinned = true
		end
	end

	-- [[ Shadowlands Missions ]]
	local CovenantMissionFrame = _G.CovenantMissionFrame
	ReskinMissionFrame(CovenantMissionFrame)
	CovenantMissionFrame:Styling()

	CovenantMissionFrame.RaisedBorder:SetAlpha(0)
	_G.CovenantMissionFrameMissions.RaisedFrameEdges:SetAlpha(0)
	_G.CovenantMissionFrameMissions.MaterialFrame.LeftFiligree:SetAlpha(0)
	_G.CovenantMissionFrameMissions.MaterialFrame.RightFiligree:SetAlpha(0)

	hooksecurefunc(CovenantMissionFrame, "SetupTabs", function(self)
		self.MapTab:SetShown(not self.Tab2:IsShown())
	end)

	_G.CombatLog:DisableDrawLayer("BACKGROUND")
	_G.CombatLog.ElevatedFrame:SetAlpha(0)
	_G.CombatLog.CombatLogMessageFrame:StripTextures()
	MERS:CreateBDFrame(_G.CombatLog.CombatLogMessageFrame, .25)

	local bg = MERS:CreateBDFrame(CovenantMissionFrame.FollowerTab, .25)
	bg:SetPoint("TOPLEFT", 3, 2)
	bg:SetPoint("BOTTOMRIGHT", -3, -10)
	CovenantMissionFrame.FollowerTab.RaisedFrameEdges:SetAlpha(0)
	CovenantMissionFrame.FollowerTab.HealFollowerFrame.ButtonFrame:SetAlpha(0)
	_G.CovenantMissionFrameFollowers.ElevatedFrame:SetAlpha(0)
	_G.CovenantMissionFrameFollowersListScrollFrameScrollBar:DisableDrawLayer("BACKGROUND")
	_G.CovenantMissionFrameFollowersListScrollFrameScrollBar:CreateBackdrop('Transparent')
	MERS:CreateGradient(_G.CovenantMissionFrameFollowersListScrollFrameScrollBar.backdrop)

	-- Credits siweia
	-- WarPlan
	if IsAddOnLoaded("WarPlan") then
		local function ReskinWarPlanMissions(self)
			local missions = self.TaskBoard.Missions
			for i = 1, #missions do
				local button = missions[i]
				if not button.styled then
					ReskinWidgetFont(button.XPReward, 1, 1, 1)
					ReskinWidgetFont(button.Description, .8, .8, .8)
					ReskinWidgetFont(button.CDTDisplay, 1, 1, 1)

					local groups = button.Groups
					if groups then
						for j = 1, #groups do
							local group = groups[j]
							group:StripTextures()
							S:HandleButton(group)
							ReskinWidgetFont(group.Features, 1, .8, 0)
						end
					end

					button.styled = true
				end
			end
		end

		C_Timer_After(.1, function()
			local WarPlanFrame = _G.WarPlanFrame
			if not WarPlanFrame then return end

			WarPlanFrame:StripTextures()
			WarPlanFrame:CreateBackdrop('Transparent')
			WarPlanFrame.ArtFrame:StripTextures()
			S:HandleCloseButton(WarPlanFrame.ArtFrame.CloseButton)
			ReskinWidgetFont(WarPlanFrame.ArtFrame.TitleText, 1, .8, 0)

			ReskinWarPlanMissions(WarPlanFrame)
			WarPlanFrame:HookScript("OnShow", ReskinWarPlanMissions)
			S:HandleButton(WarPlanFrame.TaskBoard.AllPurposeButton)

			local entries = WarPlanFrame.HistoryFrame.Entries
			for i = 1, #entries do
				local entry = entries[i]
				entry:DisableDrawLayer("BACKGROUND")
				S:HandleIcon(entry.Icon)
				entry.Name:SetFontObject("Number12Font")
				entry.Detail:SetFontObject("Number12Font")
			end
		end)
	end

	-- VenturePlan, 4.12a and higer
	if IsAddOnLoaded("VenturePlan") then
		function VPEX_OnUIObjectCreated(otype, widget, peek)
			if widget:IsObjectType("Frame") then
				if otype == "MissionButton" then
					S:HandleButton(peek("ViewButton"))
					S:HandleButton(peek("DoomRunButton"))
					S:HandleButton(peek("TentativeClear"))
					ReskinWidgetFont(peek("Description"), .8, .8, .8)
					ReskinWidgetFont(peek("enemyHP"), 1, 1, 1)
					ReskinWidgetFont(peek("enemyATK"), 1, 1, 1)
					ReskinWidgetFont(peek("animaCost"), .6, .8, 1)
					ReskinWidgetFont(peek("duration"), 1, .8, 0)
					ReskinWidgetFont(widget.CDTDisplay:GetFontString(), 1, .8, 0)
				elseif otype == "CopyBoxUI" then
					S:HandleButton(widget.ResetButton)
					S:HandleCloseButton(widget.CloseButton2)
					ReskinWidgetFont(widget.Intro, 1, 1, 1)
					ReskinWidgetFont(widget.FirstInputBoxLabel, 1, .8, 0)
					ReskinWidgetFont(widget.SecondInputBoxLabel, 1, .8, 0)
					ReskinWidgetFont(widget.VersionText, 1, 1, 1)
				elseif otype == "MissionList" then
					widget:StripTextures()
					local background = widget:GetChildren()
					background:StripTextures()
					background:CreateBackdrop('Transparent')
				elseif otype == "MissionPage" then
					widget:StripTextures()
					S:HandleButton(peek("UnButton"))
				elseif otype == "ILButton" then
					widget:DisableDrawLayer("BACKGROUND")
					widget:CreateBackdrop('Transparent')
					widget.backdrop:SetPoint("TOPLEFT", -3, 1)
					widget.backdrop:SetPoint("BOTTOMRIGHT", 2, -2)
					widget.Icon:CreateBackdrop('Transparent')
				elseif otype == "IconButton" then
					S:HandleIcon(widget:GetNormalTexture())
					widget:SetHighlightTexture(nil)
					widget:SetPushedTexture(E.media.normTex)
					widget.Icon:SetTexCoord(unpack(E.TexCoords))
				elseif otype == "FollowerList" then
					widget:StripTextures()
					widget:CreateBackdrop('Transparent')
				elseif otype == "FollowerListButton" then
					peek("TextLabel"):SetFontObject("Game12Font")
				elseif otype == "ProgressBar" then
					widget:StripTextures()
					widget:CreateBackdrop('Transparent')
				end
			end
		end
	end
end

S:AddCallbackForAddon("Blizzard_GarrisonUI", "mUIGarrison", LoadSkin)
