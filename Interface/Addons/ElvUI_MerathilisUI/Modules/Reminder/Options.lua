local MER, E, L, V, P, G = unpack(select(2, ...))

--Cache global variables
--Lua functions
local tinsert = table.insert
--WoW API / Variables
-- GLOBALS:

local function Reminder()
	local ACH = E.Libs.ACH

	E.Options.args.mui.args.modules.args.reminder = {
		type = "group",
		name = L["Reminder"],
		get = function(info) return E.db.mui.reminder[ info[#info] ] end,
		set = function(info, value) E.db.mui.reminder[ info[#info] ] = value; E:StaticPopup_Show("PRIVATE_RL"); end,
		args = {
			name = ACH:Header(MER:cOption(L["Reminder"], 'orange'), 0),
			enable = {
				order = 1,
				type = 'toggle',
				name = L["Enable"],
				desc = L["Reminds you on self Buffs."],
			},
			size = {
				order = 2,
				type = "range",
				name = L["Size"],
				min = 10, max = 60, step = 1,
			},
		},
	}
end
tinsert(MER.Config, Reminder)
