local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')

-- Cache global variables
-- Lua functions
local _G = _G
local unpack = unpack
-- WoW API
-- GLOBALS:

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.islandsPartyPose ~= true or E.private.muiSkins.blizzard.IslandsPartyPose ~= true then return end

	local IslandsPartyPoseFrame = _G.IslandsPartyPoseFrame
	IslandsPartyPoseFrame:Styling()

	IslandsPartyPoseFrame.ModelScene:StripTextures()
	MERS:CreateBDFrame(IslandsPartyPoseFrame.ModelScene, .25)

	IslandsPartyPoseFrame.Background:Hide()

	local rewardFrame = IslandsPartyPoseFrame.RewardAnimations.RewardFrame
	local bg = MERS:CreateBDFrame(rewardFrame)
	bg:SetPoint("TOPLEFT", -5, 5)
	bg:SetPoint("BOTTOMRIGHT", rewardFrame.NameFrame, 0, -5)

	rewardFrame.NameFrame:SetAlpha(0)
	rewardFrame.IconBorder:SetAlpha(0)
	rewardFrame.Icon:SetTexCoord(unpack(E.TexCoords))
	MERS:CreateBDFrame(rewardFrame.Icon)
end

S:AddCallbackForAddon("Blizzard_IslandsPartyPoseUI", "mUIIslandsPartyPose", LoadSkin)
