
EncounterDetailsDB = {
	["emotes"] = {
		{
			{
				0.4720000000088476, -- [1]
				"The Emperor's Rage echoes through the hills.", -- [2]
				"Ancient Mogu Machine", -- [3]
				7, -- [4]
			}, -- [1]
			{
				16.11699999999837, -- [1]
				"The Emperor's Strength grips this land with fists of iron.", -- [2]
				"Ancient Mogu Machine", -- [3]
				7, -- [4]
			}, -- [2]
			{
				22.25599999999395, -- [1]
				"The Emperor's Strength appears in the alcoves!", -- [2]
				"Ancient Mogu Machine", -- [3]
				1, -- [4]
			}, -- [3]
			{
				49.08300000001327, -- [1]
				"The Emperor's Courage burns everlasting.", -- [2]
				"Ancient Mogu Machine", -- [3]
				7, -- [4]
			}, -- [4]
			{
				55.18900000001304, -- [1]
				"The Emperor's Courage appears in the alcoves!", -- [2]
				"Ancient Mogu Machine", -- [3]
				1, -- [4]
			}, -- [5]
			{
				72.17300000000978, -- [1]
				"The Emperor's Strength appears in the alcoves!", -- [2]
				"Ancient Mogu Machine", -- [3]
				1, -- [4]
			}, -- [6]
			{
				79.48099999999977, -- [1]
				"The Endless Army will crush the Emperor's foes.", -- [2]
				"Ancient Mogu Machine", -- [3]
				7, -- [4]
			}, -- [7]
			{
				85.58699999999953, -- [1]
				"Two titanic constructs appear in the large alcoves!", -- [2]
				"Ancient Mogu Machine", -- [3]
				1, -- [4]
			}, -- [8]
			["boss"] = "Will of the Emperor",
		}, -- [1]
		{
			{
				0.224000000016531, -- [1]
				"Entering defensive mode.  Disabling output failsafes.", -- [2]
				"Elegon", -- [3]
				7, -- [4]
			}, -- [1]
			{
				3.795000000012806, -- [1]
				"Drawing from reserve power.", -- [2]
				"Elegon", -- [3]
				7, -- [4]
			}, -- [2]
			["boss"] = "Elegon",
		}, -- [2]
		{
			{
				0.1999999999970896, -- [1]
				"I will crush you, in body AND spirit.", -- [2]
				"Qiang the Merciless", -- [3]
				7, -- [4]
			}, -- [1]
			{
				4.649999999994179, -- [1]
				"|TInterface\\Icons\\ability_warrior_stalwartprotector.blp:20|t%s casts |cFFFF0000|Hspell:117910|h[Flanking Orders]|h|r!", -- [2]
				"Qiang the Merciless", -- [3]
				1, -- [4]
			}, -- [2]
			{
				4.649999999994179, -- [1]
				"Flanking attack! March into battle!", -- [2]
				"Qiang the Merciless", -- [3]
				7, -- [4]
			}, -- [3]
			{
				8.407999999995809, -- [1]
				"You'll see your mistake soon enough!", -- [2]
				"Subetai the Swift", -- [3]
				7, -- [4]
			}, -- [4]
			{
				15.71600000000035, -- [1]
				"Soon you will understand why my subjects fear the shadows!", -- [2]
				"Zian of the Endless Shadow", -- [3]
				7, -- [4]
			}, -- [5]
			{
				22.98999999999069, -- [1]
				"|TInterface\\Icons\\ability_rogue_envelopingshadows.blp:20|t%s casts |cFFFF0000|Hspell:117506|h[Undying Shadows]|h|r!", -- [2]
				"Zian of the Endless Shadow", -- [3]
				1, -- [4]
			}, -- [6]
			{
				22.98999999999069, -- [1]
				"The darkness comes for you, and with it, death.", -- [2]
				"Zian of the Endless Shadow", -- [3]
				7, -- [4]
			}, -- [7]
			{
				25.45900000000256, -- [1]
				"You have angered the emperor! THE SENTENCE IS DEATH!", -- [2]
				"Meng the Demented", -- [3]
				7, -- [4]
			}, -- [8]
			["boss"] = "The Spirit Kings",
		}, -- [3]
	},
	["encounter_spells"] = {
		[116778] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Emperor's Courage",
		},
		[117960] = {
			["school"] = 64,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_START"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Elegon",
		},
		[118303] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Undying Shadows",
		},
		[122151] = {
			["school"] = 0,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Gara'jal the Spiritbinder",
		},
		[115829] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Amethyst Guardian",
		},
		[117910] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Qiang the Merciless",
		},
		[116829] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Unknown",
		},
		[116060] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Amethyst Guardian",
		},
		[115982] = {
			["school"] = 32,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Shadowy Minion",
		},
		[116223] = {
			["school"] = 8,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Jade Guardian",
		},
		[124967] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Elegon",
		},
		[116782] = {
			["school"] = 16,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
		},
		[124947] = {
			["school"] = 64,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Elegon",
		},
		[115828] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Jasper Guardian",
		},
		[130774] = {
			["school"] = 32,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Amethyst Guardian",
		},
		[117506] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Zian of the Endless Shadow",
		},
		[117539] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Undying Shadows",
		},
		[116363] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Feng the Accursed",
		},
		[115827] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Jade Guardian",
		},
		[117514] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Unknown",
		},
		[117485] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Emperor's Courage",
		},
		[125206] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Jasper Guardian",
		},
		[116525] = {
			["school"] = 1,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Emperor's Rage",
		},
		[115771] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
			},
			["source"] = "Cobalt Guardian",
		},
	},
}
