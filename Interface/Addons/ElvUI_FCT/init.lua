local E, _, V, P, G = unpack(ElvUI)
local NP = E:GetModule('NamePlates')
local UF = E:GetModule('UnitFrames')
local addon, ns = ...

local FCT = E.Libs.AceAddon:NewAddon(addon, 'AceEvent-3.0')
ns[1], ns[2] = addon, FCT

local _G, select, tostring = _G, select, tostring
local type, pairs, format, tonumber = type, pairs, format, tonumber
local hooksecurefunc = hooksecurefunc
local CreateFrame = CreateFrame

local Version = GetAddOnMetadata(addon, 'Version')
local version = format('[|cFF508cf7v%s|r]', Version)
local title = '|cFFdd2244Floating Combat Text|r'
local by = 'by |cFF8866ccSimpy|r and |cFF34dd61Lightspark|r (ls-)'

local FONT_OUTLINES = {
	NONE = _G.NONE,
	OUTLINE = 'OUTLINE',
	MONOCHROMEOUTLINE = 'MONOCROMEOUTLINE',
	THICKOUTLINE = 'THICKOUTLINE'
}

FCT.orders = {
	colors = {
		['1'] = 1, -- Damage
		['2'] = 2, -- Holy
		['4'] = 3, -- Fire
		['8'] = 4, -- Nature
		['16'] = 5, -- Frost
		['32'] = 6, -- Shadow
		['64'] = 7, -- Arcane
		Standard = 8,
		Physical = 9,
		Ranged = 10,
		Heal = 11,
		Prefix = 12
	},

	-- Nameplates
	Player = {1, 'Player'},
	FriendlyPlayer = {3, 'FRIENDLY_PLAYER'},
	FriendlyNPC = {4, 'FRIENDLY_NPC'},
	EnemyPlayer = {5, 'ENEMY_PLAYER'},
	EnemyNPC = {6, 'ENEMY_NPC'},

	-- Unitframes
	Target = {2, 'Target'},
	TargetTarget = {3, 'TargetTarget'},
	TargetTargetTarget = {4, 'TargetTargetTarget'},
	Focus = {5, 'Focus'},
	FocusTarget = {6, 'FocusTarget'},
	Pet = {7, 'Pet'},
	PetTarget = {8, 'PetTarget'},
	Arena = {9, 'Arena'},
	Boss = {10, 'Boss'},
	Party = {11, 'Party'},
	Raid = {12, 'Raid'},
	Raid40 = {13, 'Raid-40'},
	RaidPet = {14, 'Raid Pet'},
	Assist = {15, 'Assist'},
	Tank = {16, 'Tank'},
}

FCT.frameTypes = {
	-- NamePlates
	PLAYER = 'Player',
	FRIENDLY_PLAYER = 'FriendlyPlayer',
	FRIENDLY_NPC = 'FriendlyNPC',
	ENEMY_PLAYER = 'EnemyPlayer',
	ENEMY_NPC = 'EnemyNPC',

	-- Unitframes
	arena = 'Arena',
	assist = 'Assist',
	boss = 'Boss',
	party = 'Party',
	raid = 'Raid',
	raid40 = 'Raid40',
	tank = 'Tank',
	focus = 'Focus',
	focustarget = 'FocusTarget',
	pet = 'Pet',
	pettarget = 'PetTarget',
	player = 'Player',
	target = 'Target',
	targettarget = 'TargetTarget',
	targettargettarget = 'TargetTargetTarget',
}

function FCT:ColorOption(name, desc)
	if desc then
		return format('|cFF508cf7%s:|r |cFFffffff%s|r', name, desc)
	else
		return format('|cFF508cf7%s|r', name)
	end
end

function FCT:UpdateNamePlates()
	if NP.Plates then
		for nameplate in pairs(NP.Plates) do
			FCT:ToggleFrame(nameplate)
		end
	end
end

function FCT:UpdateUnitFrames()
	-- focus, focustarget, pet, pettarget, player, target, targettarget, targettargettarget
	if UF.units then
		for unit in pairs(UF.units) do
			FCT:ToggleFrame(UF[unit])
		end
	end

	-- arena{1-5}, boss{1-5}
	if UF.groupunits then
		for unit in pairs(UF.groupunits) do
			FCT:ToggleFrame(UF[unit])
		end
	end

	-- assist, tank, party, raid, raid40, raidpet
	if UF.headers then
		for groupName in pairs(UF.headers) do
			local group = UF[groupName]
			if group and group.GetNumChildren then
				for i=1, group:GetNumChildren() do
					local frame = select(i, group:GetChildren())
					if frame and frame.Health then
						FCT:ToggleFrame(frame)
					elseif frame then
						for n = 1, frame:GetNumChildren() do
							local child = select(n, frame:GetChildren())
							if child and child.Health then
								FCT:ToggleFrame(child)
							end
						end
					end
				end
			end
		end
	end
end

function FCT:AddOptions(arg1, arg2)
	local i = (type(arg2) == 'number' and tostring(arg2)) or arg2
	if E.Options.args.ElvFCT.args[arg1].args[i] then return end

	if arg1 == 'colors' then
		E.Options.args.ElvFCT.args[arg1].args[i] = {
			order = FCT.orders.colors[i],
			name = FCT.L[ns.colors[arg2].n],
			type = 'color',
		}
	else
		E.Options.args.ElvFCT.args[arg1].args[arg2] = {
			order = FCT.orders[arg2][1],
			name = FCT.L[FCT.orders[arg2][2]],
			args = FCT.options,
			type = 'group',
			get = function(info)
				if info[4] == 'advanced' or info[4] == 'exclude' then
					return FCT.db[arg1].frames[arg2][info[4]][ info[#info] ]
				else
					return FCT.db[arg1].frames[arg2][ info[#info] ]
				end
			end,
			set = function(info, value)
				if info[4] == 'advanced' or info[4] == 'exclude' then
					FCT.db[arg1].frames[arg2][info[4]][ info[#info] ] = value
				else
					FCT.db[arg1].frames[arg2][ info[#info] ] = value
				end

				if arg1 == 'unitframes' then
					FCT:UpdateUnitFrames()
				else
					FCT:UpdateNamePlates()
				end
			end
		}
	end
end

function FCT:Options()
	FCT.L = E.Libs.ACL:GetLocale('ElvUI', E.global.general.locale or 'enUS')
	local L = FCT.L

	FCT.options = {
		enable = { order = 1, type = 'toggle', name = L["Enable"] },
		toggles = { order = 2, type = 'group', name = '', guiInline = true, args = {
			header = { order = 0, name = FCT:ColorOption(L["Toggles"]), type = 'header' },
			alternateIcon = { order = 1, type = 'toggle', name = L["Alternate Icon"] },
			showIcon = { order = 2, type = 'toggle', name = L["Show Icon"] },
			showName = { order = 3, type = 'toggle', name = L["Show Name"] },
			showPet = { order = 4, type = 'toggle', name = L["Show Pet"] },
			showHots = { order = 5, type = 'toggle', name = L["Show Hots"] },
			showDots = { order = 6, type = 'toggle', name = L["Show Dots"] },
			isTarget = { order = 7, type = 'toggle', name = L["Is Target"] },
			isPlayer = { order = 8, type = 'toggle', name = L["From Player"] },
			critShake = { order = 9, type = 'toggle', name = L["Critical Frame Shake"] },
			textShake = { order = 10, type = 'toggle', name = L["Critical Text Shake"] },
			cycleColors = { order = 11, type = 'toggle', name = L["Cycle Spell Colors"] },
			prefix = { order = 12, type = 'input', name = L["Critical Prefix"] }
		}},
		fonts = { order = 3, type = 'group', name = '', guiInline = true, args = {
			header = { order = 0, name = FCT:ColorOption(L["Fonts"]), type = 'header' },
			font = { order = 1, type = 'select', dialogControl = 'LSM30_Font', name = L["Font"], values = _G.AceGUIWidgetLSMlists.font },
			fontOutline = { order = 2, name = L["Font Outline"], desc = L["Set the font outline."], type = 'select', values = FONT_OUTLINES},
			fontSize = { order = 3, name = _G.FONT_SIZE, type = 'range', min = 4, max = 60, step = 1 },
			critFont = { order = 4, type = 'select', dialogControl = 'LSM30_Font', name = L["Critical Font"], values = _G.AceGUIWidgetLSMlists.font },
			critFontOutline = { order = 5, name = L["Critical Font Outline"], desc = L["Set the font outline."], type = 'select', values = FONT_OUTLINES},
			critFontSize = { order = 6, name = L["Critical Font Size"], type = 'range', min = 4, max = 60, step = 1 }
		}},
		settings = { order = 4, type = 'group', name = '', guiInline = true, args = {
			header = { order = 0, name =  FCT:ColorOption(L["Settings"]), type = 'header' },
			mode = { order = 1, name = L["Mode"], type = 'select', values = { Simpy = L["Fade"], LS = L["Animation"] } },
			numberStyle = { order = 2, name = L["Number Style"], type = 'select', values = { NONE = _G.NONE, PERCENT = L["Percent"], SHORT = L["Short"], BLIZZARD = L["Blizzard"], BLIZZTEXT = L["Blizzard Text"] }},
			iconSize = { order = 3, name = L["Icon Size"], type = 'range', min = 10, max = 30, step = 1 },
			shakeDuration = { order = 4, name = L["Shake Duration"], type = 'range', min = 0, max = 1, step = 0.1 }
		}},
		offsets = { order = 5, type = 'group', name = '', guiInline = true, args = {
			header = { order = 0, name =  FCT:ColorOption(L["Offsets"]), type = 'header' },
			textY = { order = 1, name = L["Text Y"], desc = L["Only applies to Fade mode."], type = 'range', min = -100, max = 100, step = 1 },
			textX = { order = 2, name = L["Text X"], desc = L["Only applies to Fade mode."], type = 'range', min = -100, max = 100, step = 1 },
			iconY = { order = 3, name = L["Icon Y"], type = 'range', min = -100, max = 100, step = 1 },
			iconX = { order = 4, name = L["Icon X"], type = 'range', min = -100, max = 100, step = 1 },
			spellY = { order = 5, name = L["Spell Y"], type = 'range', min = -100, max = 100, step = 1 },
			spellX = { order = 6, name = L["Spell X"], type = 'range', min = -100, max = 100, step = 1 },
		}},
		advanced = { order = 6, type = 'group', name = '', guiInline = true, args = {
			header = { order = 0, name =  FCT:ColorOption(L["Animations"], L["Only applies on Animation mode."]), type = 'header' },
			anim = { order = 1, name = L["Animation"], type = 'select', values = {
				fountain = L["Fountain"],
				vertical = L["Vertical"],
				horizontal = L["Horizontal"],
				diagonal = L["Diagonal"],
				static = L["Static"],
				random = L["Random"]
			}},
			AlternateX = { order = 2, type = 'toggle', name = L["Alternate X"] },
			AlternateY = { order = 3, type = 'toggle', name = L["Alternate Y"] },
			spacer1 = { order = 4, type = 'description', name = ' ', width = 'full' },
			numTexts = { order = 5, name = L["Text Amount"], type = 'range', min = 1, max = 30, step = 1 },
			radius = { order = 6, name = L["Radius"], type = 'range', min = 0, max = 256, step = 1 },
			ScrollTime = { order = 7, name = L["Scroll Time"], type = 'range', min = 0, max = 5, step = 0.1 },
			FadeTime = { order = 8, name = L["Fade Time"], type = 'range', min = 0, max = 5, step = 0.1 },
			DirectionX = { order = 9, name = L["Direction X"], type = 'range', min = -100, max = 100, step = 1 },
			DirectionY = { order = 10, name = L["Direction Y"], type = 'range', min = -100, max = 100, step = 1 },
			OffsetX = { order = 11, name = L["Offset X"], type = 'range', min = -100, max = 100, step = 1 },
			OffsetY = { order = 12, name = L["Offset Y"], type = 'range', min = -100, max = 100, step = 1 },
		}}
	}

	E.Options.args.ElvFCT = { order = 6, type = 'group', name = title, childGroups = 'tab', args = {
		name = {
			order = 1,
			type = 'header',
			name = title..' '..version..' '..by,
		},
		nameplates = {
			order = 2,
			type = 'group',
			childGroups = 'tab',
			name = L["NamePlates"],
			get = function(info) return FCT.db.nameplates[ info[#info] ] end,
			set = function(info, value) FCT.db.nameplates[ info[#info] ] = value; FCT:UpdateNamePlates() end,
			args = { enable = { order = 1, type = 'toggle', name = L["Enable"] } }
		},
		unitframes = {
			order = 3,
			type = 'group',
			childGroups = 'tab',
			name = L["UnitFrames"],
			get = function(info) return FCT.db.unitframes[ info[#info] ] end,
			set = function(info, value) FCT.db.unitframes[ info[#info] ] = value; FCT:UpdateUnitFrames() end,
			args = { enable = { order = 1, type = 'toggle', name = L["Enable"] } }
		},
		colors = {
			order = 4,
			type = 'group',
			name = L["Colors"],
			get = function(info)
				local i = tonumber(info[#info]) or info[#info]
				local t, d = FCT.db.colors[i], ns.colors[i]
				return t.r, t.g, t.b, t.a, d.r, d.g, d.b, d.a
			end,
			set = function(info, r, g, b)
				local t = FCT.db.colors[ tonumber(info[#info]) or info[#info] ]
				t.r, t.g, t.b = r, g, b
				FCT:UpdateColors();
			end,
			args = {}
	}	}}

	for name in pairs(ns.defaults.nameplates.frames) do
		FCT:AddOptions('nameplates', name)
	end
	for name in pairs(ns.defaults.unitframes.frames) do
		FCT:AddOptions('unitframes', name)
	end
	for index in pairs(ns.colors) do
		FCT:AddOptions('colors', index)
	end
end

function FCT:PLAYER_LOGOUT()
	E:RemoveDefaults(_G.ElvFCT, FCT.data)
end

function FCT:FetchDB(Module, Type)
	local db = FCT.db[Module]
	if db then
		return db.frames[FCT.frameTypes[Type]]
	end
end

function FCT:ToggleFrame(frame)
	if not FCT.db then return end

	if (self ~= FCT) and not frame.ElvFCT then
		frame.ElvFCT = FCT:Build(frame, (self == NP and frame.RaisedElement) or frame.RaisedElementParent)
	end

	if frame.ElvFCT then
		if frame.unitframeType then
			local db = FCT:FetchDB('unitframes', frame.unitframeType)
			if db then FCT:Toggle(frame, FCT.db.unitframes, db) end
		elseif frame.frameType then
			local db = FCT:FetchDB('nameplates', frame.frameType)
			if db then FCT:Toggle(frame, FCT.db.nameplates, db) end
		end
	end
end

function FCT:Build(frame, RaisedElement)
	local raised = CreateFrame('Frame', frame:GetDebugName()..'RaisedElvFCT', frame)
	raised:SetFrameLevel(RaisedElement:GetFrameLevel() + 50)
	raised:SetAllPoints()

	return { owner = frame, parent = raised }
end

function FCT:UpdateColors()
	for k, v in pairs(FCT.db.colors) do
		if not ns.color[k] then
			ns.color[k] = {}
		end

		ns.color[k][1] = v.r
		ns.color[k][2] = v.g
		ns.color[k][3] = v.b
	end
end

function FCT:Initialize()
	-- Database
	FCT.data = {}; E:CopyDefaults(FCT.data, ns.defaults)
	FCT.data.colors = {}; E:CopyDefaults(FCT.data.colors, ns.colors)
	for name in pairs(ns.defaults.nameplates.frames) do E:CopyDefaults(FCT.data.nameplates.frames[name], ns.frames) end
	for name in pairs(ns.defaults.unitframes.frames) do E:CopyDefaults(FCT.data.unitframes.frames[name], ns.frames) end
	FCT.db = {}; E:CopyDefaults(FCT.db, FCT.data)

	-- Globals
	_G.ElvUI_FCT = FCT
	_G.ElvFCT = E:CopyTable(FCT.db, _G.ElvFCT)

	-- Settings
	FCT:UpdateColors()

	-- Events
	FCT:RegisterEvent('PLAYER_LOGOUT')
	FCT:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED')

	-- Register
	E.Libs.EP:RegisterPlugin(addon, FCT.Options)
end

hooksecurefunc(E, 'Initialize', FCT.Initialize)
hooksecurefunc(NP, 'UpdatePlate', FCT.ToggleFrame)
hooksecurefunc(UF, 'Configure_HealthBar', FCT.ToggleFrame)
