local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
local pairs, unpack = pairs, unpack
-- WoW API / Variables
local C_SpecializationInfo_GetSpellsDisplay = C_SpecializationInfo.GetSpellsDisplay
local C_SpecializationInfo_IsInitialized = C_SpecializationInfo.IsInitialized
local GetSpecialization = GetSpecialization
local GetNumSpecializations = GetNumSpecializations
local GetSpecializationInfo = GetSpecializationInfo
local GetSpecializationRole = GetSpecializationRole
local GetSpecializationSpells = GetSpecializationSpells
local GetSpellTexture = GetSpellTexture
local GetPvpTalentInfoByID = GetPvpTalentInfoByID
local UnitSex = UnitSex
local hooksecurefunc = hooksecurefunc

local r, g, b = unpack(E["media"].rgbvaluecolor)

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.talent ~= true or E.private.muiSkins.blizzard.talent ~= true then return; end

	_G.PlayerTalentFrame:Styling()

	-- Specc
	for i = 1, GetNumSpecializations(false, nil) do
		local bu = _G.PlayerTalentFrameSpecialization["specButton"..i]
		local _, _, _, icon = GetSpecializationInfo(i, false, nil)

		bu.ring:Hide()

		bu.specIcon:SetTexture(icon)
		bu.specIcon:SetTexCoord(unpack(E.TexCoords))
		bu.specIcon:SetSize(50, 50)
		bu.specIcon:SetPoint("LEFT", bu, "LEFT", 15, 0)

		bu.SelectedTexture = bu:CreateTexture(nil, "BACKGROUND")
		bu.SelectedTexture:SetColorTexture(r, g, b, .5)
	end

	-- Talents
	for i = 1, _G.MAX_TALENT_TIERS do
		local row = _G.PlayerTalentFrameTalents['tier'..i]
		for j = 1, _G.NUM_TALENT_COLUMNS do
			local bu = row['talent'..j]
			if bu.bg then
				MERS:CreateGradient(bu.bg)
				bu.bg.backdrop:SetTemplate("Transparent")
				bu.bg.SelectedTexture:SetColorTexture(r, g, b, .5)
			end
		end
	end

	for _, frame in pairs({ _G.PlayerTalentFrameSpecialization, _G.PlayerTalentFramePetSpecialization }) do
		local scrollChild = frame.spellsScroll.child

		scrollChild.ring:Hide()
		scrollChild.specIcon:SetTexCoord(unpack(E.TexCoords))
		scrollChild.specIcon:Size(70, 70)

		local roleIcon = scrollChild.roleIcon
		roleIcon:SetTexture(E.media.roleIcons)

		local left = scrollChild:CreateTexture(nil, "OVERLAY")
		left:SetWidth(1)
		left:SetTexture(E.media.normTex)
		left:SetVertexColor(0, 0, 0)
		left:SetPoint("TOPLEFT", roleIcon, 3, -3)
		left:SetPoint("BOTTOMLEFT", roleIcon, 3, 4)

		local right = scrollChild:CreateTexture(nil, "OVERLAY")
		right:SetWidth(1)
		right:SetTexture(E.media.normTex)
		right:SetVertexColor(0, 0, 0)
		right:SetPoint("TOPRIGHT", roleIcon, -3, -3)
		right:SetPoint("BOTTOMRIGHT", roleIcon, -3, 4)

		local top = scrollChild:CreateTexture(nil, "OVERLAY")
		top:SetHeight(1)
		top:SetTexture(E.media.normTex)
		top:SetVertexColor(0, 0, 0)
		top:SetPoint("TOPLEFT", roleIcon, 3, -3)
		top:SetPoint("TOPRIGHT", roleIcon, -3, -3)

		local bottom = scrollChild:CreateTexture(nil, "OVERLAY")
		bottom:SetHeight(1)
		bottom:SetTexture(E.media.normTex)
		bottom:SetVertexColor(0, 0, 0)
		bottom:SetPoint("BOTTOMLEFT", roleIcon, 3, 4)
		bottom:SetPoint("BOTTOMRIGHT", roleIcon, -3, 4)
	end

	hooksecurefunc("PlayerTalentFrame_UpdateSpecFrame", function(self, spec)
		if not C_SpecializationInfo_IsInitialized() then
			return
		end

		local playerTalentSpec = GetSpecialization(nil, self.isPet, _G.PlayerSpecTab2:GetChecked() and 2 or 1)
		local shownSpec = spec or playerTalentSpec or 1
		local numSpecs = GetNumSpecializations(nil, self.isPet);

		local sex = self.isPet and UnitSex("pet") or UnitSex("player")
		local id, _, _, icon = GetSpecializationInfo(shownSpec, nil, self.isPet, nil, sex)
		local scrollChild = self.spellsScroll.child

		scrollChild.specIcon:SetTexture(icon)

		local index = 1
		local bonuses
		local bonusesIncrement = 1;
		if self.isPet then
			bonuses = {GetSpecializationSpells(shownSpec, nil, self.isPet, true)}
			bonusesIncrement = 2;
		else
			bonuses = C_SpecializationInfo_GetSpellsDisplay(id)
		end

		if bonuses then
			for i = 1, #bonuses, bonusesIncrement do
				local frame = scrollChild["abilityButton"..index]
				local _, spellIcon = GetSpellTexture(bonuses[i])

				frame.icon:SetTexture(spellIcon)
				frame.subText:SetTextColor(.75, .75, .75)

				if not frame.styled then
					frame.ring:Hide()
					frame.icon:SetTexCoord(unpack(E.TexCoords))
					MERS:CreateBG(frame.icon)

					frame.styled = true
				end
				index = index + 1
			end
		end

		for i = 1, numSpecs do
			local bu = self["specButton"..i]

			if bu.disabled then
				bu.roleName:SetTextColor(.5, .5, .5)
			else
				bu.roleName:SetTextColor(1, 1, 1)
			end
		end
	end)

	local buttons = {"PlayerTalentFrameSpecializationSpecButton", "PlayerTalentFramePetSpecializationSpecButton"}
	for _, name in pairs(buttons) do
		for i = 1, 4 do
			local bu = _G[name..i]

			if bu and bu.backdrop then
				bu.backdrop:SetTemplate("Transparent")
				MERS:CreateGradient(bu.backdrop)
			end

			local roleIcon = bu.roleIcon
			local role = GetSpecializationRole(i, false, bu.isPet)
			if role and roleIcon then
				if not roleIcon.backdrop then
					roleIcon:CreateBackdrop()
					roleIcon.backdrop:SetOutside(roleIcon)
				end
				roleIcon:SetTexture(E.media.roleIcons)
				roleIcon:SetTexCoord(MER:GetRoleTexCoord(role))
			end
		end
	end

	-- PvP Talents
	local PvpTalentFrame = _G.PlayerTalentFrameTalents.PvpTalentFrame

	for _, button in pairs(PvpTalentFrame.Slots) do
		button:CreateBackdrop()
		button.backdrop:SetOutside(button.Texture)

		hooksecurefunc(button, "Update", function(self)
			local selectedTalentID = self.predictedSetting:Get()
			if selectedTalentID then
				local _, _, texture = GetPvpTalentInfoByID(selectedTalentID)
				self.Texture:SetTexture(texture)
				self.Texture:SetTexCoord(0.1, 0.9, 0.1, 0.9)
			else
				self.Texture:SetTexCoord(.15, .85, .15, .85)
			end
		end)
	end

	local PlayerTalentFrameTalentsPvpTalentFrameTalentList = _G.PlayerTalentFrameTalentsPvpTalentFrameTalentList
	PlayerTalentFrameTalentsPvpTalentFrameTalentList.backdrop:Styling()

	for i = 1, 10 do
		local bu = _G["PlayerTalentFrameTalentsPvpTalentFrameTalentListScrollFrameButton"..i]
		local icon = bu.Icon
		if bu then
			-- Hide ElvUI backdrop
			if bu.backdrop then
				bu.backdrop:Hide()
			end

			MERS:Reskin(bu)

			if bu.Selected then
				bu.Selected:SetTexture(nil)

				bu.selectedTexture = bu:CreateTexture(nil, "ARTWORK")
				bu.selectedTexture:SetInside(bu)
				bu.selectedTexture:SetColorTexture(r, g, b, .5)
				bu.selectedTexture:SetShown(bu.Selected:IsShown())

				hooksecurefunc(bu, "Update", function(selectedHere)
					if not bu.selectedTexture then return end
					if bu.Selected:IsShown() then
						bu.selectedTexture:SetShown(selectedHere)
					else
						bu.selectedTexture:Hide()
					end
				end)
			end

			bu.backdrop:SetAllPoints()

			if bu.Icon then
				bu.Icon:SetTexCoord(unpack(E.TexCoords))
				bu.Icon:SetDrawLayer("ARTWORK", 1)
			end
		end
	end
end

S:AddCallbackForAddon("Blizzard_TalentUI", "mUITalents", LoadSkin)
