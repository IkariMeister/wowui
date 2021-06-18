local MER, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_UnitFrames')
local UF = E.UnitFrames

local _G = _G
local hooksecurefunc = hooksecurefunc

function module:Configure_Castbar(frame)
	local castbar = frame.Castbar

	if castbar.backdrop and not castbar.isStyled then
		castbar.backdrop:Styling(false, false, true)
		castbar.isStyled = true
	end
end

function module:InitCastBar()
	hooksecurefunc(UF, "Configure_Castbar", module.Configure_Castbar)
end
