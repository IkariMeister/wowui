local MER, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_UnitFrames')
local UF = E:GetModule('UnitFrames')

--Cache global variables
--Lua functions
--WoW API / Variables
local CreateFrame = CreateFrame
local hooksecurefunc = hooksecurefunc
-- GLOBALS:

function module:ADDON_LOADED(event, addon)
	if addon ~= "ElvUI_Config" then return end

	module:UnregisterEvent(event)
end

function module:CreateHighlight(self)
	if not E.db.mui.unitframes.highlight then return end

	local hl = self:CreateTexture(nil, "BACKGROUND")
	hl:SetAllPoints()
	hl:SetTexture("Interface\\PETBATTLES\\PetBattle-SelectedPetGlow")
	hl:SetTexCoord(0, 1, .5, 1)
	hl:SetVertexColor(1, 1, .6)
	hl:SetBlendMode("ADD")
	hl:Hide()
	self.Highlight = hl

	self:HookScript("OnEnter", function()
		self.Highlight:Show()
	end)
	self:HookScript("OnLeave", function()
		self.Highlight:Hide()
	end)
end

function module:StyleUFs()
	local db = E.db.mui.unitframes

	if db.style then
		-- Player
		self:InitPlayer()
		self:InitPower()
		self:InitCastBar()

		-- Target
		self:InitTarget()

		-- TargetTarget
		self:InitTargetTarget()

		-- Pet
		self:InitPet()

		-- Focus
		self:InitFocus()

		-- FocusTarget
		self:InitFocusTarget()

		-- Party
		self:InitParty()

		-- Raid
		self:InitRaid()

		-- Raid40
		self:InitRaid40()

		-- Boss
		self:InitBoss()
	end
end

function module:Initialize()
	if E.private.unitframe.enable ~= true then return end

	local db = E.db.mui.unitframes
	MER:RegisterDB(self, "unitframes")

	-- Units
	self:StyleUFs()

	-- RaidIcons
	hooksecurefunc(UF, "Configure_RaidIcon", module.Configure_RaidIcon)

	-- Auras
	self:LoadAuras()

	-- RoleIcons
	self:Configure_RoleIcons()

	-- Health Prediction
	self:HealPrediction()

	self:RegisterEvent("ADDON_LOADED")
end

MER:RegisterModule(module:GetName())
