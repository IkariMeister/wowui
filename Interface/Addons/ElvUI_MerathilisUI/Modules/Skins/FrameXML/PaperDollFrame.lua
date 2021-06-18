local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
local ipairs, pairs, type, unpack = ipairs, pairs, type, unpack
--WoW API / Variables
local IsAddOnLoaded = IsAddOnLoaded
local hooksecurefunc = hooksecurefunc
-- GLOBALS:

local r, g, b = unpack(E["media"].rgbvaluecolor)

local slots = {
	"Head", "Neck", "Shoulder", "Shirt", "Chest", "Waist", "Legs", "Feet", "Wrist",
	"Hands", "Finger0", "Finger1", "Trinket0", "Trinket1", "Back", "MainHand",
	"SecondaryHand", "Tabard",
}

local function StatsPane(type)
	_G.CharacterStatsPane[type]:StripTextures()
	_G.CharacterStatsPane[type].backdrop:Hide()
end

local function CharacterStatFrameCategoryTemplate(frame)
	frame:StripTextures()

	local bg = frame.Background
	bg:SetTexture([[Interface\LFGFrame\UI-LFG-SEPARATOR]])
	bg:SetTexCoord(0, 0.6640625, 0, 0.3125)
	bg:ClearAllPoints()
	bg:SetPoint("CENTER", 0, -5)
	bg:SetSize(210, 30)
	bg:SetVertexColor(r, g, b, 1)
end

-- Copied from ElvUI
local function ColorizeStatPane(frame)
	if frame.leftGrad then frame.leftGrad:StripTextures() end
	if frame.rightGrad then frame.rightGrad:StripTextures() end

	frame.leftGrad = frame:CreateTexture(nil, "BORDER")
	frame.leftGrad:SetWidth(80)
	frame.leftGrad:SetHeight(frame:GetHeight())
	frame.leftGrad:SetPoint("LEFT", frame, "CENTER")
	frame.leftGrad:SetTexture(E.media.blankTex)
	frame.leftGrad:SetGradientAlpha("Horizontal", r, g, b, 0.75, r, g, b, 0)

	frame.rightGrad = frame:CreateTexture(nil, "BORDER")
	frame.rightGrad:SetWidth(80)
	frame.rightGrad:SetHeight(frame:GetHeight())
	frame.rightGrad:SetPoint("RIGHT", frame, "CENTER")
	frame.rightGrad:SetTexture(E.media.blankTex)
	frame.rightGrad:SetGradientAlpha("Horizontal", r, g, b, 0, r, g, b, 0.75)
end

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.character ~= true or E.private.muiSkins.blizzard.character ~= true then return end

	local CharacterStatsPane = _G.CharacterStatsPane

	_G.CharacterModelFrame:DisableDrawLayer("BACKGROUND")
	_G.CharacterModelFrame:DisableDrawLayer("BORDER")
	_G.CharacterModelFrame:DisableDrawLayer("OVERLAY")

	_G.GearManagerDialogPopup:Styling()

	if not IsAddOnLoaded("DejaCharacterStats") then
		CharacterStatsPane.ItemLevelCategory.Title:SetTextColor(unpack(E.media.rgbvaluecolor))
		CharacterStatsPane.AttributesCategory.Title:SetTextColor(unpack(E.media.rgbvaluecolor))
		CharacterStatsPane.EnhancementsCategory.Title:SetTextColor(unpack(E.media.rgbvaluecolor))

		StatsPane("EnhancementsCategory")
		StatsPane("ItemLevelCategory")
		StatsPane("AttributesCategory")

		CharacterStatFrameCategoryTemplate(CharacterStatsPane.ItemLevelCategory)
		CharacterStatFrameCategoryTemplate(CharacterStatsPane.AttributesCategory)
		CharacterStatFrameCategoryTemplate(CharacterStatsPane.EnhancementsCategory)

		CharacterStatsPane.ItemLevelFrame.Background:SetAlpha(0)
		ColorizeStatPane(CharacterStatsPane.ItemLevelFrame)

		hooksecurefunc("PaperDollFrame_UpdateStats", function()
			for _, Table in ipairs({_G.CharacterStatsPane.statsFramePool:EnumerateActive()}) do
				if type(Table) == 'table' then
					for statFrame in pairs(Table) do
						ColorizeStatPane(statFrame)
						if statFrame.Background:IsShown() then
							statFrame.leftGrad:Show()
							statFrame.rightGrad:Show()
						else
							statFrame.leftGrad:Hide()
							statFrame.rightGrad:Hide()
						end
					end
				end
			end
		end)
	end

	-- CharacterFrame Class Texture
	local ClassTexture = _G.ClassTexture
	if not ClassTexture then
		ClassTexture = _G.CharacterFrameInsetRight:CreateTexture(nil, "BORDER")
		ClassTexture:SetPoint("BOTTOM", _G.CharacterFrameInsetRight, "BOTTOM", 0, 40)
		ClassTexture:SetSize(126, 120)
		ClassTexture:SetAlpha(.25)
		ClassTexture:SetTexture("Interface\\AddOns\\ElvUI_MerathilisUI\\media\\textures\\classIcons\\CLASS-"..E.myclass)
		ClassTexture:SetDesaturated(true)
	end
end

S:AddCallback("mUIPaperDoll", LoadSkin)
