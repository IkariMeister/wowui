local MER, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_UnitFrames')
local UF = E:GetModule('UnitFrames')

-- Cache global variables
-- Lua functions
local _G = _G
-- WoW API / Variables
local hooksecurefunc = hooksecurefunc
-- GLOBALS:

function module:Update_PartyFrames(frame)
	local db = E.db.unitframe

	-- Only looks good on Transparent
	if db.colors.transparentHealth then
		if frame and frame.Health and not frame.isStyled then
			frame.Health:Styling(false, false, true)
			frame.isStyled = true
		end
	end

	module:CreateHighlight(frame)
end

function module:InitParty()
	if not E.db.unitframe.units.party.enable then return end

	hooksecurefunc(UF, "Update_PartyFrames", module.Update_PartyFrames)
end
