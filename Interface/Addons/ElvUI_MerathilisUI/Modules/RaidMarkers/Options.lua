local MER, E, L, V, P, G = unpack(select(2, ...))
local RMA = MER:GetModule('MER_RaidMarkers')
local COMP = MER:GetModule('MER_Compatibility')

--Cache global variables
--Lua functions
local _G = _G
local format = string.format
local tinsert = table.insert

local SHIFT_KEY, CTRL_KEY, ALT_KEY = SHIFT_KEY, CTRL_KEY, ALT_KEY
local AGGRO_WARNING_IN_PARTY = AGGRO_WARNING_IN_PARTY
local CUSTOM, DEFAULT = CUSTOM, DEFAULT

local IsAddOnLoaded = IsAddOnLoaded

local function RaidMarkers()
	local ACH = E.Libs.ACH

	E.Options.args.mui.args.modules.args.raidmarkers = {
		type = "group",
		name = L["Raid Markers"],
		get = function(info) return E.db.mui.raidmarkers[ info[#info] ] end,
		disabled = function() return (COMP.SLE and E.db.sle.raidmarkers.enable) end,
		args = {
			name = ACH:Header(MER:cOption(L["Raid Markers"], 'orange'), 1),
			credits = {
				order = 2,
				type = "group",
				name = MER:cOption(L["Credits"], 'orange'),
				guiInline = true,
				args = {
					tukui = ACH:Description(format("|cff9482c9Shadow & Light - Darth & Repooc|r"), 1),
				},
			},
			marksheader = {
				order = 3,
				type = "group",
				name = MER:cOption(L["Raid Markers"], 'orange'),
				guiInline = true,
				args = {
					info = ACH:Description(L["Options for panels providing fast access to raid markers and flares."], 4),
					enable = {
						order = 5,
						type = "toggle",
						name = L["Enable"],
						desc = L["Show/Hide raid marks."],
						set = function(info, value) E.db.mui.raidmarkers.enable = value; RMA:Visibility() end,
					},
					reset = {
						order = 6,
						type = 'execute',
						name = L["Restore Defaults"],
						desc = L["Reset these options to defaults"],
						disabled = function() return not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						func = function() MER:Reset("marks") end,
					},
					space1 = {
						order = 7,
						type = 'description',
						name = "",
						hidden = function() return not E.db.mui.raidmarkers.enable end,
					},
					backdrop = {
						type = 'toggle',
						order = 8,
						name = L["Backdrop"],
						disabled = function() return not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						set = function(info, value) E.db.mui.raidmarkers.backdrop = value; RMA:Backdrop() end,
					},
					buttonSize = {
						order = 9,
						type = 'range',
						name = L["Button Size"],
						min = 16, max = 40, step = 1,
						disabled = function() return not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						set = function(info, value) E.db.mui.raidmarkers.buttonSize = value; RMA:UpdateBar() end,
					},
					spacing = {
						order = 10,
						type = 'range',
						name = L["Button Spacing"],
						min = -4, max = 10, step = 1,
						disabled = function() return not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						set = function(info, value) E.db.mui.raidmarkers.spacing = value; RMA:UpdateBar() end,
					},
					orientation = {
						order = 11,
						type = 'select',
						name = L["Orientation"],
						disabled = function() return not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						set = function(info, value) E.db.mui.raidmarkers.orientation = value; RMA:UpdateBar() end,
						values = {
							["HORIZONTAL"] = L["Horizontal"],
							["VERTICAL"] = L["Vertical"],
						},
					},
					reverse = {
						type = 'toggle',
						order = 12,
						name = L["Reverse"],
						disabled = function() return not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						set = function(info, value) E.db.mui.raidmarkers.reverse = value; RMA:UpdateBar() end,
					},
					modifier = {
						order = 13,
						type = 'select',
						name = L["Modifier Key"],
						desc = L["Set the modifier key for placing world markers."],
						disabled = function() return not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						set = function(info, value) E.db.mui.raidmarkers.modifier = value; RMA:UpdateWorldMarkersAndTooltips() end,
						values = {
							["shift-"] = SHIFT_KEY,
							["ctrl-"] = CTRL_KEY,
							["alt-"] = ALT_KEY,
						},
					},
					visibility = {
						type = 'select',
						order = 14,
						name = L["Visibility"],
						disabled = function() return not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						set = function(info, value) E.db.mui.raidmarkers.visibility = value; RMA:Visibility() end,
						values = {
							["DEFAULT"] = DEFAULT,
							["INPARTY"] = AGGRO_WARNING_IN_PARTY,
							["ALWAYS"] = L["Always Display"],
							["CUSTOM"] = CUSTOM,
						},
					},
					customVisibility = {
						order = 15,
						type = 'input',
						width = 'full',
						name = L["Visibility State"],
						disabled = function() return E.db.mui.raidmarkers.visibility ~= "CUSTOM" or not E.db.mui.raidmarkers.enable end,
						hidden = function() return not E.db.mui.raidmarkers.enable end,
						set = function(info, value) E.db.mui.raidmarkers.customVisibility = value; RMA:Visibility() end,
					},
				},
			},
		},
	}
end
tinsert(MER.Config, RaidMarkers)
