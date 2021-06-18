local MER, E, L, V, P, G = unpack(select(2, ...))
local MERS = MER:GetModule('MER_Skins')
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
local unpack = unpack
--WoW API / Variables
local CreateFrame = CreateFrame
local hooksecurefunc = hooksecurefunc
local GetLFGDungeonRewardInfo = GetLFGDungeonRewardInfo
local GetLFGDungeonShortageRewardInfo = GetLFGDungeonShortageRewardInfo
-- GLOBALS:

local function StyleRewardButton(button)
	local buttonName = button:GetName()

	local icon = _G[buttonName.."IconTexture"]
	local cta = _G[buttonName.."ShortageBorder"]
	local count = _G[buttonName.."Count"]
	local na = _G[buttonName.."NameFrame"]

	icon:SetTexCoord(unpack(E.TexCoords))
	icon:SetDrawLayer("OVERLAY")

	count:SetDrawLayer("OVERLAY")

	na:SetColorTexture(0, 0, 0, .25)
	na:SetSize(110, 39)
	na:ClearAllPoints()
	na:SetPoint("LEFT", icon, "RIGHT", -7, 0)

	if button.IconBorder then
		button.IconBorder:SetAlpha(0)
	end

	if cta then
		cta:SetAlpha(0)
	end

	button.bg2 = CreateFrame("Frame", nil, button)
	button.bg2:SetPoint("TOPLEFT", na, "TOPLEFT", 10, 0)
	button.bg2:SetPoint("BOTTOMRIGHT", na, "BOTTOMRIGHT", -1, 0)
	button.bg2:SetFrameStrata("BACKGROUND")
	MERS:CreateBD(button.bg2, .25)
	MERS:CreateGradient(button.bg2)
end

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.lfg ~= true or E.private.muiSkins.blizzard.lfg ~= true then return; end

	hooksecurefunc("LFGRewardsFrame_SetItemButton", function(parentFrame, _, index, _, _, _, _, _, _, _, _, _, _)
		local parentName = parentFrame:GetName()
		local button = _G[parentName.."Item"..index]
		if button and not button.styled then
			StyleRewardButton(button)
			button.styled = true
		end
	end)

	StyleRewardButton(_G.LFDQueueFrameRandomScrollFrameChildFrame.MoneyReward)
	StyleRewardButton(_G.RaidFinderQueueFrameScrollFrameChildFrame.MoneyReward)

	local leaderBg = MERS:CreateBG(_G.LFGDungeonReadyDialogRoleIconLeaderIcon)
	leaderBg:SetDrawLayer("ARTWORK", 2)
	leaderBg:SetPoint("TOPLEFT", _G.LFGDungeonReadyDialogRoleIconLeaderIcon, 2, 0)
	leaderBg:SetPoint("BOTTOMRIGHT", _G.LFGDungeonReadyDialogRoleIconLeaderIcon, -3, 4)

	hooksecurefunc("LFGDungeonReadyPopup_Update", function()
		leaderBg:SetShown(_G.LFGDungeonReadyDialogRoleIconLeaderIcon:IsShown())
	end)

	do
		local bg = MERS:CreateBDFrame(_G.LFGDungeonReadyDialogRoleIcon, 1)
		bg:SetPoint("TOPLEFT", 9, -7)
		bg:SetPoint("BOTTOMRIGHT", -8, 10)
	end

	hooksecurefunc("LFGDungeonReadyDialogReward_SetMisc", function(button)
		if not button.styled then
			local border = _G[button:GetName().."Border"]

			button.texture:SetTexCoord(unpack(E.TexCoords))

			border:SetColorTexture(0, 0, 0)
			border:SetDrawLayer("BACKGROUND")
			border:SetPoint("TOPLEFT", button.texture, -1, 1)
			border:SetPoint("BOTTOMRIGHT", button.texture, 1, -1)

			button.styled = true
		end

		button.texture:SetTexture("Interface\\Icons\\inv_misc_coin_02")
	end)

	hooksecurefunc("LFGDungeonReadyDialogReward_SetReward", function(button, dungeonID, rewardIndex, rewardType, rewardArg)
		if not button.styled then
			local border = _G[button:GetName().."Border"]

			button.texture:SetTexCoord(unpack(E.TexCoords))

			border:SetColorTexture(0, 0, 0)
			border:SetDrawLayer("BACKGROUND")
			border:SetPoint("TOPLEFT", button.texture, -1, 1)
			border:SetPoint("BOTTOMRIGHT", button.texture, 1, -1)

			button.styled = true
		end

		local _, texturePath
		if rewardType == "reward" then
			_, texturePath = GetLFGDungeonRewardInfo(dungeonID, rewardIndex);
		elseif rewardType == "shortage" then
			_, texturePath = GetLFGDungeonShortageRewardInfo(dungeonID, rewardArg, rewardIndex);
		end
		if texturePath then
			button.texture:SetTexture(texturePath)
		end
	end)
end

S:AddCallback("mUILFG", LoadSkin)
