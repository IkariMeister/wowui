local MER, E, L, V, P, G = unpack(select(2, ...))
local S = E:GetModule('Skins')

--Cache global variables
--Lua functions
local _G = _G
--WoW API / Variables
-- GLOBALS:

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.tradeskill ~= true or E.private.muiSkins.blizzard.tradeskill ~= true then return; end

	-- MainFrame
	local frame = _G.TradeSkillFrame
	frame:Styling()

	if frame.bg1 then
		frame.bg1:Hide()
	end

	if frame.bg2 then
		frame.bg2:Hide()
	end

	-- Reposition Optional Reagentlist due to TradeTabs
	local optionalReagents = frame.OptionalReagentList
	optionalReagents:ClearAllPoints()
	optionalReagents:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 40, 0)
	optionalReagents:Styling()
end

S:AddCallbackForAddon("Blizzard_TradeSkillUI", "mUITradeSkill", LoadSkin)
