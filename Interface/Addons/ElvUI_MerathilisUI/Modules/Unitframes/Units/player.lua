local MER, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_UnitFrames')
local UF = E:GetModule('UnitFrames')

-- Cache global variables
-- Lua functions
local _G = _G
-- WoW API / Variables
local hooksecurefunc = hooksecurefunc
-- GLOBALS:

function module:Update_PlayerFrame(frame)
	local db = E.db.mui.unitframes

	if not frame.Swing then module:Construct_Swing(frame) end
	if not frame.GCD then module:Construct_GCD(frame) end
	if not frame.CounterBar then module:Construct_CounterBar(frame) end

	-- Only looks good on Transparent
	if E.db.unitframe.colors.transparentHealth then
		if frame and frame.Health and not frame.isStyled then
			frame.Health:Styling(false, false, true)
			frame.isStyled = true
		end
	end

	if db.swing.enable then
		if not frame:IsElementEnabled('Swing') then
			frame:EnableElement('Swing')
		end
	else
		if frame:IsElementEnabled('Swing') then
			frame:DisableElement('Swing')
		end
	end

	if db.gcd.enable then
		if not frame:IsElementEnabled('GCD') then
			frame:EnableElement('GCD')
		end
	else
		if frame:IsElementEnabled('GCD') then
			frame:DisableElement('GCD')
		end
	end

	if db.counterBar.enable then
		if not frame:IsElementEnabled('CounterBar') then
			frame:EnableElement('CounterBar')
		end
	else
		if frame:IsElementEnabled('CounterBar') then
			frame:DisableElement('CounterBar')
		end
	end

	module:CreateHighlight(frame)
end

function module:InitPlayer()
	if not E.db.unitframe.units.player.enable then return end

	hooksecurefunc(UF, "Update_PlayerFrame", module.Update_PlayerFrame)
end
