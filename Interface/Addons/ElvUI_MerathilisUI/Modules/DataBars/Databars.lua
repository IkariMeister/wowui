local MER, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_DataBars')
local DB = E:GetModule('DataBars')

--Cache global variables
--Lua functions
local _G = _G
local pairs = pairs
--WoW API / Variables
local C_Timer_After = C_Timer.After
-- GLOBALS:

function module:StyleBackdrops()
	for _, bar in pairs(DB.StatusBars) do
		if bar and bar.db.enable then
			if bar.holder then
				bar.holder:Styling()
			end
		end
	end
end

function module:Initialize()
	module.db = E.db.mui.databars
	MER:RegisterDB(self, 'databars')

	self:StyleBackdrops()
end

MER:RegisterModule(module:GetName())
