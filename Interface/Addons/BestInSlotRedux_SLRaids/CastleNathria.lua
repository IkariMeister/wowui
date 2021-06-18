local CastleRaid = LibStub("AceAddon-3.0"):GetAddon("BestInSlotRedux"):NewModule("CastleRaid")
local Castle = "Castle"
function CastleRaid:OnEnable()
	--local L = LibStub("AceLocale-3.0"):GetLocale("BestInSlotRedux")

	local castleName = C_Map.GetMapInfo(1735).name
	self:RegisterExpansion("Shadowlands", EXPANSION_NAME8)
	self:RegisterRaidTier("Shadowlands", 90100, castleName, PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6)
	self:RegisterRaidInstance(90100, Castle, castleName, {
		bonusids = {
		[1] = {7189,1472},
		[2] = {7188,1485},
		[3] = {7187,1498},
		},
		difficultyconversion = {
		[1] = 3, --Raid Normal
		[2] = 5, --Raid Heroic
		[3] = 6, --Raid Mythic
		}
	})
	--------------------------------------------------
	----- Castle Nathria
	--------------------------------------------------


	-----------------------------------
	----- Shriekwing
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2393)
	local lootTable = {
		182993, --Chiropteran Leggings
		183034, --Cowled Batwing Cloak
		182976, --Double Chained Utility Belt
		183027, --Errant Crusader's Greaves
		182979, --Slippers of the Forgotten Heretic
		184016, --Skulker's Wing
	}
	self:RegisterBossLoot(Castle, lootTable, bossName)

	-----------------------------------
	----- Huntsman Altimor ---- 183892 Token Weapon Druid, Hunter, Mage
	-----------------------------------
	----Kyrianer----
	if (UnitClass("player") == "Druid" or UnitClass("player") == "Hunter" or UnitClass("player") == "Mage") and (C_Covenants.GetActiveCovenantID() == 1) then
		local bossName = EJ_GetEncounterInfo(2429)
		local lootTable = {
			----Kyrianer----
			174298, --Dutiful Disciple's Cleaver
			175251, --Forked Blade of Fortitude
			175279, --Lost Soul Xiphos
			176098, --Truthseeker Longbow
			177850, --Meditation's Muse
			178973, --Symphonic Chimekeeper
			180312, --Guarding Cudgel of the Goliath
			184230, --Pike of the Honored Peltast
			184236, --Warglaive of Devoted Might
			184272, --Ascended Gladius of Glory
			184273, --Puremind Piercer
			184275, --Sacred Sparrer's Edge
			----Standard Loot----
			183040, --Charm of Eternal Winter
			182996, --Grim Pursuant's Maille
			183018, --Hellhound Cuffs
			182988, --Master Huntsman's Bandolier
			183892, --Mystic Anima Spherule
			182995, --Spell-Woven Tourniquet
			184017, --Bargast's Leash
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Venthyr----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Hunter" or UnitClass("player") == "Mage") and (C_Covenants.GetActiveCovenantID() == 6) then
		local bossName = EJ_GetEncounterInfo(2429)
		local lootTable = {
			----Venthyr Token 183892----
			182414, --Crimson Court Backstabber
			182415, --Stoneborn Goliath's Cleaver
			182416, --Claws of the Stone Generals
			182417, --Mace of Enveloping Sins
			182418, --Torch of Fiery Atonement
			182419, --Nathrian Torchbearer's Stave
			182420, --Nathrian Duelist's Fleshrender
			182421, --Barbed-Edge of the Stone Legion
			182422, --Dread Inquisitor's Spine
			182423, --Wingdancer's Warglaive
			182424, --Dredbat Repeating Crossbow
			----Standard Loot----
			183040, --Charm of Eternal Winter
			182996, --Grim Pursuant's Maille
			183018, --Hellhound Cuffs
			182988, --Master Huntsman's Bandolier
			183892, --Mystic Anima Spherule
			182995, --Spell-Woven Tourniquet
			184017, --Bargast's Leash
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----NightFae----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Hunter" or UnitClass("player") == "Mage") and (C_Covenants.GetActiveCovenantID() == 3) then
		local bossName = EJ_GetEncounterInfo(2429)
		local lootTable = {
			----NightFae----
			179530, --Nightwatch Eviscerator
			179541, --Colossal Sludgepounder
			179561, --Rootspinner's Bloodbough
			179579, --Jaws of the Hungerer
			179492, --Keepcrawler's Gutripper
			180002, --Spire of the Long Dark
			180022, --Rootbulb of the Sinless
			180071, --Shrieking Sinseeker
			180258, --Faeweald Fleshrender
			184241, --Stone-Sentinel Breaker
			----Standard Loot----
			183040, --Charm of Eternal Winter
			182996, --Grim Pursuant's Maille
			183018, --Hellhound Cuffs
			182988, --Master Huntsman's Bandolier
			183892, --Mystic Anima Spherule
			182995, --Spell-Woven Tourniquet
			184017, --Bargast's Leash
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Necrolord----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Hunter" or UnitClass("player") == "Mage") and (C_Covenants.GetActiveCovenantID() == 4) then
		local bossName = EJ_GetEncounterInfo(2429)
		local lootTable = {
			----Necrolord----
			184244, --Biting Gutsliver Shank
			184247, --Grip of the Dead
			184248, --Blightforged Twinblade
			184249, --Staff of the Lichsworn Lieutenant
			184250, --Deadeye Blunderbuss
			184251, --Ossified Broadaxe
			184252, --Aranakk Torture Device
			184253, --Abdomen Chopper
			184254, --Plaguespine Sickle
			184255, --Gristlegore Hacker
			----Standard Loot----
			183040, --Charm of Eternal Winter
			182996, --Grim Pursuant's Maille
			183018, --Hellhound Cuffs
			182988, --Master Huntsman's Bandolier
			183892, --Mystic Anima Spherule
			182995, --Spell-Woven Tourniquet
			184017, --Bargast's Leash
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Standard Loot----
	else
		local bossName = EJ_GetEncounterInfo(2429)
		local lootTable = {
			----Standard Loot----
			183040, --Charm of Eternal Winter
			182996, --Grim Pursuant's Maille
			183018, --Hellhound Cuffs
			182988, --Master Huntsman's Bandolier
			183892, --Mystic Anima Spherule
			182995, --Spell-Woven Tourniquet
			184017, --Bargast's Leash
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	end

	-----------------------------------
	----- Hungering Destroyer ---- 183891 Weapon Token Paladin, Priest, Shaman
	-----------------------------------
	----Kyrianer----
	if (UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Shaman") and (C_Covenants.GetActiveCovenantID() == 1) then
		local bossName = EJ_GetEncounterInfo(2428)
		local lootTable = {
			----Kyrianer----
			174298, --Dutiful Disciple's Cleaver
			175251, --Forked Blade of Fortitude
			175279, --Lost Soul Xiphos
			176098, --Truthseeker Longbow
			177850, --Meditation's Muse
			178973, --Symphonic Chimekeeper
			180312, --Guarding Cudgel of the Goliath
			184230, --Pike of the Honored Peltast
			184236, --Warglaive of Devoted Might
			184272, --Ascended Gladius of Glory
			184273, --Puremind Piercer
			184275, --Sacred Sparrer's Edge
			----Standard Loot----
			183028, --Cinch of Infinite Tightness
			183000, --Consumptive Chainmail Carapace
			182992, --Endlessly Gluttonous Greaves
			182994, --Epaulettes of Overwhelming Force
			183001, --Helm of Insatiable Appetite
			183009, --Miasma-lacquered Jerkin
			183891, --Venerated Anima Spherule
			183024, --Volatile Shadestitch Legguards	
			184022, --Consumptive Infusion
			184023, --Gluttonous Spike	
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Venthyr----
	elseif (UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Shaman") and (C_Covenants.GetActiveCovenantID() == 2) then
		local bossName = EJ_GetEncounterInfo(2428)
		local lootTable = {
			----Venthyr----
			182414, --Crimson Court Backstabber
			182415, --Stoneborn Goliath's Cleaver
			182416, --Claws of the Stone Generals
			182417, --Mace of Enveloping Sins
			182418, --Torch of Fiery Atonement
			182419, --Nathrian Torchbearer's Stave
			182420, --Nathrian Duelist's Fleshrender
			182421, --Barbed-Edge of the Stone Legion
			182422, --Dread Inquisitor's Spine
			182423, --Wingdancer's Warglaive
			182424, --Dredbat Repeating Crossbow
			----Standard Loot----
			183028, --Cinch of Infinite Tightness
			183000, --Consumptive Chainmail Carapace
			182992, --Endlessly Gluttonous Greaves
			182994, --Epaulettes of Overwhelming Force
			183001, --Helm of Insatiable Appetite
			183009, --Miasma-lacquered Jerkin
			183891, --Venerated Anima Spherule
			183024, --Volatile Shadestitch Legguards	
			184022, --Consumptive Infusion
			184023, --Gluttonous Spike	
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----NightFae----
	elseif (UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Shaman") and (C_Covenants.GetActiveCovenantID() == 3) then
		local bossName = EJ_GetEncounterInfo(2428)
		local lootTable = {
			----NightFae----
			179530, --Nightwatch Eviscerator
			179541, --Colossal Sludgepounder
			179561, --Rootspinner's Bloodbough
			179579, --Jaws of the Hungerer
			179492, --Keepcrawler's Gutripper
			180002, --Spire of the Long Dark
			180022, --Rootbulb of the Sinless
			180071, --Shrieking Sinseeker
			180258, --Faeweald Fleshrender
			184241, --Stone-Sentinel Breaker
			----Standard Loot----
			183028, --Cinch of Infinite Tightness
			183000, --Consumptive Chainmail Carapace
			182992, --Endlessly Gluttonous Greaves
			182994, --Epaulettes of Overwhelming Force
			183001, --Helm of Insatiable Appetite
			183009, --Miasma-lacquered Jerkin
			183891, --Venerated Anima Spherule
			183024, --Volatile Shadestitch Legguards	
			184022, --Consumptive Infusion
			184023, --Gluttonous Spike	
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Necrolord----
	elseif (UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Shaman") and (C_Covenants.GetActiveCovenantID() == 4) then
		local bossName = EJ_GetEncounterInfo(2428)
		local lootTable = {
			----Necrolord----
			184244, --Biting Gutsliver Shank
			184247, --Grip of the Dead
			184248, --Blightforged Twinblade
			184249, --Staff of the Lichsworn Lieutenant
			184250, --Deadeye Blunderbuss
			184251, --Ossified Broadaxe
			184252, --Aranakk Torture Device
			184253, --Abdomen Chopper
			184254, --Plaguespine Sickle
			184255, --Gristlegore Hacker
			----Standard Loot----
			183028, --Cinch of Infinite Tightness
			183000, --Consumptive Chainmail Carapace
			182992, --Endlessly Gluttonous Greaves
			182994, --Epaulettes of Overwhelming Force
			183001, --Helm of Insatiable Appetite
			183009, --Miasma-lacquered Jerkin
			183891, --Venerated Anima Spherule
			183024, --Volatile Shadestitch Legguards	
			184022, --Consumptive Infusion
			184023, --Gluttonous Spike	
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Standard Loot----
	else
		local bossName = EJ_GetEncounterInfo(2428)
		local lootTable = {
			----Standard Loot----
			183028, --Cinch of Infinite Tightness
			183000, --Consumptive Chainmail Carapace
			182992, --Endlessly Gluttonous Greaves
			182994, --Epaulettes of Overwhelming Force
			183001, --Helm of Insatiable Appetite
			183009, --Miasma-lacquered Jerkin
			183891, --Venerated Anima Spherule
			183024, --Volatile Shadestitch Legguards	
			184022, --Consumptive Infusion
			184023, --Gluttonous Spike	
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	end

	-----------------------------------
	----- Artificer Xy'Mox ---- 183888 Offhand Token Monk, Paladin, Priest, Warrior
	-----------------------------------
	----Kyrianer----
	if (UnitClass("player") == "Monk" or UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 1) then
		local bossName = EJ_GetEncounterInfo(2418)
		local lootTable = {
			----Kyrianer----
			174310, --Elysian Sentinel's Aegis
			175254, --Burning Beacon of Hope
			----Standard Loot----
			183019, --Precisely Calibrated Chronometer
			183038, --Hyperlight Band
			182987, --Breastplate of Cautious Calculation
			183004, --Shadewarped Sash
			183012, --Greaves of Enigmatic Energies
			184021, --Glyph of Assimilation
			183888, --APogee Anima Bead
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Venthyr----
	elseif (UnitClass("player") == "Monk" or UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 2) then
		local bossName = EJ_GetEncounterInfo(2418)
		local lootTable = {
			----Venthyr Token 183892----
			182425, --Builwark of the Stone Legion
			182426, --Stonewright's Infused Stonecarver
			----Standard Loot----
			183019, --Precisely Calibrated Chronometer
			183038, --Hyperlight Band
			182987, --Breastplate of Cautious Calculation
			183004, --Shadewarped Sash
			183012, --Greaves of Enigmatic Energies
			184021, --Glyph of Assimilation
			183888, --APogee Anima Bead
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----NightFae----
	elseif (UnitClass("player") == "Monk" or UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 3) then
		local bossName = EJ_GetEncounterInfo(2418)
		local lootTable = {
			----NightFae----
			179570, --Harp of the Sanguine
			179610, --Dredge-Giant's
			----Standard Loot----
			183019, --Precisely Calibrated Chronometer
			183038, --Hyperlight Band
			182987, --Breastplate of Cautious Calculation
			183004, --Shadewarped Sash
			183012, --Greaves of Enigmatic Energies
			184021, --Glyph of Assimilation
			183888, --APogee Anima Bead
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Necrolord----
	elseif (UnitClass("player") == "Monk" or UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 4) then
		local bossName = EJ_GetEncounterInfo(2418)
		local lootTable = {
			----Necrolord----
			184245, --Barrier of the Chosen
			184246, --Frigid Invoker's Focus
			----Standard Loot----
			183019, --Precisely Calibrated Chronometer
			183038, --Hyperlight Band
			182987, --Breastplate of Cautious Calculation
			183004, --Shadewarped Sash
			183012, --Greaves of Enigmatic Energies
			184021, --Glyph of Assimilation
			183888, --APogee Anima Bead
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Standard Loot----
	else
		local bossName = EJ_GetEncounterInfo(2418)
		local lootTable = {
			----Standard Loot----
			183019, --Precisely Calibrated Chronometer
			183038, --Hyperlight Band
			182987, --Breastplate of Cautious Calculation
			183004, --Shadewarped Sash
			183012, --Greaves of Enigmatic Energies
			184021, --Glyph of Assimilation
			183888, --APogee Anima Bead
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	end

	-----------------------------------
	----- Sun King's Salvation ---- 183893 Weapon Token DeathKnight, DemonHunter, Warlock
	-----------------------------------
	----Kyrianer----
	if (UnitClass("player") == "DeathKnight" or UnitClass("player") == "DemonHunter" or UnitClass("player") == "Warlock") and (C_Covenants.GetActiveCovenantID() == 1) then
		local bossName = EJ_GetEncounterInfo(2422)
		local lootTable = {
			----Kyrianer----
			174298, --Dutiful Disciple's Cleaver
			175251, --Forked Blade of Fortitude
			175279, --Lost Soul Xiphos
			176098, --Truthseeker Longbow
			177850, --Meditation's Muse
			178973, --Symphonic Chimekeeper
			180312, --Guarding Cudgel of the Goliath
			184230, --Pike of the Honored Peltast
			184236, --Warglaive of Devoted Might
			184272, --Ascended Gladius of Glory
			184273, --Puremind Piercer
			184275, --Sacred Sparrer's Edge
			----Standard Loot----
			183893, --Abominable Anima Spherule
			183033, --Mantle of Manifest Sins
			182986, --High Torturer's Smock
			182977, --Bangles of Errant Pride
			183007, --Bleakwing Assassin's Grips
			183025, --Stoic Guardsman's Belt
			184019, --Soul Igniter
			184018, --Splintered Heart of Al'ar
			184020, --Tuft of Smoldering Plumage	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Venthyr----
	elseif (UnitClass("player") == "DeathKnight" or UnitClass("player") == "DemonHunter" or UnitClass("player") == "Warlock") and (C_Covenants.GetActiveCovenantID() == 2) then
		local bossName = EJ_GetEncounterInfo(2422)
		local lootTable = {
			----Venthyr Token 183892----
			182414, --Crimson Court Backstabber
			182415, --Stoneborn Goliath's Cleaver
			182416, --Claws of the Stone Generals
			182417, --Mace of Enveloping Sins
			182418, --Torch of Fiery Atonement
			182419, --Nathrian Torchbearer's Stave
			182420, --Nathrian Duelist's Fleshrender
			182421, --Barbed-Edge of the Stone Legion
			182422, --Dread Inquisitor's Spine
			182423, --Wingdancer's Warglaive
			182424, --Dredbat Repeating Crossbow
			----Standard Loot----
			183893, --Abominable Anima Spherule
			183033, --Mantle of Manifest Sins
			182986, --High Torturer's Smock
			182977, --Bangles of Errant Pride
			183007, --Bleakwing Assassin's Grips
			183025, --Stoic Guardsman's Belt
			184019, --Soul Igniter
			184018, --Splintered Heart of Al'ar
			184020, --Tuft of Smoldering Plumage	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----NightFae----
	elseif (UnitClass("player") == "DeathKnight" or UnitClass("player") == "DemonHunter" or UnitClass("player") == "Warlock") and (C_Covenants.GetActiveCovenantID() == 3) then
		local bossName = EJ_GetEncounterInfo(2422)
		local lootTable = {
			----NightFae----
			179530, --Nightwatch Eviscerator
			179541, --Colossal Sludgepounder
			179561, --Rootspinner's Bloodbough
			179579, --Jaws of the Hungerer
			179492, --Keepcrawler's Gutripper
			180002, --Spire of the Long Dark
			180022, --Rootbulb of the Sinless
			180071, --Shrieking Sinseeker
			180258, --Faeweald Fleshrender
			184241, --Stone-Sentinel Breaker
			----Standard Loot----
			183893, --Abominable Anima Spherule
			183033, --Mantle of Manifest Sins
			182986, --High Torturer's Smock
			182977, --Bangles of Errant Pride
			183007, --Bleakwing Assassin's Grips
			183025, --Stoic Guardsman's Belt
			184019, --Soul Igniter
			184018, --Splintered Heart of Al'ar
			184020, --Tuft of Smoldering Plumage	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Necrolord----
	elseif (UnitClass("player") == "DeathKnight" or UnitClass("player") == "DemonHunter" or UnitClass("player") == "Warlock") and (C_Covenants.GetActiveCovenantID() == 4) then
		local bossName = EJ_GetEncounterInfo(2422)
		local lootTable = {
			----Necrolord----
			184244, --Biting Gutsliver Shank
			184247, --Grip of the Dead
			184248, --Blightforged Twinblade
			184249, --Staff of the Lichsworn Lieutenant
			184250, --Deadeye Blunderbuss
			184251, --Ossified Broadaxe
			184252, --Aranakk Torture Device
			184253, --Abdomen Chopper
			184254, --Plaguespine Sickle
			184255, --Gristlegore Hacker
			----Standard Loot----
			183893, --Abominable Anima Spherule
			183033, --Mantle of Manifest Sins
			182986, --High Torturer's Smock
			182977, --Bangles of Errant Pride
			183007, --Bleakwing Assassin's Grips
			183025, --Stoic Guardsman's Belt
			184019, --Soul Igniter
			184018, --Splintered Heart of Al'ar
			184020, --Tuft of Smoldering Plumage	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Standard Loot----
	else
		local bossName = EJ_GetEncounterInfo(2422)
		local lootTable = {
			----Standard Loot----
			183893, --Abominable Anima Spherule
			183033, --Mantle of Manifest Sins
			182986, --High Torturer's Smock
			182977, --Bangles of Errant Pride
			183007, --Bleakwing Assassin's Grips
			183025, --Stoic Guardsman's Belt
			184019, --Soul Igniter
			184018, --Splintered Heart of Al'ar
			184020, --Tuft of Smoldering Plumage	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	end

	-----------------------------------
	----- Lady Inerva Darkvein ---- 183889 Offhand Token Druid, Mage, Shaman, Warlock
	-----------------------------------
	----Kyrianer----
	if (UnitClass("player") == "Druid" or UnitClass("player") == "Mage" or UnitClass("player") == "Shaman" or UnitClass("player") == "Warlock") and (C_Covenants.GetActiveCovenantID() == 1) then
		local bossName = EJ_GetEncounterInfo(2420)
		local lootTable = {
			----Kyrianer----
			174310, --Elysian Sentinel's Aegis
			175254, --Burning Beacon of Hope
			----Standard Loot----
			183889, --Thaumaturgic Anima Bead
			183021, --Confidant's Favored Cap
			183026, --Gloves of Phantom Shadows
			183015, --Binding of Warped Desires
			182985, --Memento-Laden Cuisses
			183037, --Ritualist's Treasured Ring
			184025, --Memory of Past Sins	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Venthyr----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Mage" or UnitClass("player") == "Shaman" or UnitClass("player") == "Warlock") and (C_Covenants.GetActiveCovenantID() == 2) then
		local bossName = EJ_GetEncounterInfo(2420)
		local lootTable = {
			----Venthyr Token 183892----
			182425, --Builwark of the Stone Legion
			182426, --Stonewright's Infused Stonecarver
			----Standard Loot----
			183889, --Thaumaturgic Anima Bead
			183021, --Confidant's Favored Cap
			183026, --Gloves of Phantom Shadows
			183015, --Binding of Warped Desires
			182985, --Memento-Laden Cuisses
			183037, --Ritualist's Treasured Ring
			184025, --Memory of Past Sins	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----NightFae----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Mage" or UnitClass("player") == "Shaman" or UnitClass("player") == "Warlock") and (C_Covenants.GetActiveCovenantID() == 3) then
		local bossName = EJ_GetEncounterInfo(2420)
		local lootTable = {
			----NightFae----
			179570, --Harp of the Sanguine Court
			179610, --Dredge-Giant's Warshield
			----Standard Loot----
			183889, --Thaumaturgic Anima Bead
			183021, --Confidant's Favored Cap
			183026, --Gloves of Phantom Shadows
			183015, --Binding of Warped Desires
			182985, --Memento-Laden Cuisses
			183037, --Ritualist's Treasured Ring
			184025, --Memory of Past Sins	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Necrolord----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Mage" or UnitClass("player") == "Shaman" or UnitClass("player") == "Warlock") and (C_Covenants.GetActiveCovenantID() == 4) then
		local bossName = EJ_GetEncounterInfo(2420)
		local lootTable = {
			----Necrolord----
			184245, --Barrier of the Chosen
			184246, --Frigid Invoker's Focus
			----Standard Loot----
			183889, --Thaumaturgic Anima Bead
			183021, --Confidant's Favored Cap
			183026, --Gloves of Phantom Shadows
			183015, --Binding of Warped Desires
			182985, --Memento-Laden Cuisses
			183037, --Ritualist's Treasured Ring
			184025, --Memory of Past Sins	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Standard Loot----
	else
		local bossName = EJ_GetEncounterInfo(2420)
		local lootTable = {
			----Standard Loot----
			183889, --Thaumaturgic Anima Bead
			183021, --Confidant's Favored Cap
			183026, --Gloves of Phantom Shadows
			183015, --Binding of Warped Desires
			182985, --Memento-Laden Cuisses
			183037, --Ritualist's Treasured Ring
			184025, --Memory of Past Sins	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	end

	-----------------------------------
	----- The Council of Blood ---- 183890 Weapon Token Monk, Rogue, Warrior
	-----------------------------------
	----Kyrianer----
	if (UnitClass("player") == "Monk" or UnitClass("player") == "Rogue" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 1) then
		local bossName = EJ_GetEncounterInfo(2426)
		local lootTable = {
			----Kyrianer----
			174298, --Dutiful Disciple's Cleaver
			175251, --Forked Blade of Fortitude
			175279, --Lost Soul Xiphos
			176098, --Truthseeker Longbow
			177850, --Meditation's Muse
			178973, --Symphonic Chimekeeper
			180312, --Guarding Cudgel of the Goliath
			184230, --Pike of the Honored Peltast
			184236, --Warglaive of Devoted Might
			184272, --Ascended Gladius of Glory
			184273, --Puremind Piercer
			184275, --Sacred Sparrer's Edge
			----Standard Loot----
			183890, --Zenith Anima Spherule
			183039, --Noble's Birthstone Pendant
			182989, --Corset of Deft Duelist
			183014, --Castellan's Chainlink Grips
			183011, --Courtier' Costume Trousers
			183030, --Enchanted Toe-Tappers
			183023, --Sparkling Glass Slippers
			182983, --Stoneguard Attendant's Boots
			184024, --Macabre Sheet Music	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Venthyr----
	elseif (UnitClass("player") == "Monk" or UnitClass("player") == "Rogue" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 2) then
		local bossName = EJ_GetEncounterInfo(2426)
		local lootTable = {
			----Venthyr Token 183892----
			182414, --Crimson Court Backstabber
			182415, --Stoneborn Goliath's Cleaver
			182416, --Claws of the Stone Generals
			182417, --Mace of Enveloping Sins
			182418, --Torch of Fiery Atonement
			182419, --Nathrian Torchbearer's Stave
			182420, --Nathrian Duelist's Fleshrender
			182421, --Barbed-Edge of the Stone Legion
			182422, --Dread Inquisitor's Spine
			182423, --Wingdancer's Warglaive
			182424, --Dredbat Repeating Crossbow
			----Standard Loot----
			183890, --Zenith Anima Spherule
			183039, --Noble's Birthstone Pendant
			182989, --Corset of Deft Duelist
			183014, --Castellan's Chainlink Grips
			183011, --Courtier' Costume Trousers
			183030, --Enchanted Toe-Tappers
			183023, --Sparkling Glass Slippers
			182983, --Stoneguard Attendant's Boots
			184024, --Macabre Sheet Music	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----NightFae----
	elseif (UnitClass("player") == "Monk" or UnitClass("player") == "Rogue" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 3) then
		local bossName = EJ_GetEncounterInfo(2426)
		local lootTable = {
			----NightFae----
			179530, --Nightwatch Eviscerator
			179541, --Colossal Sludgepounder
			179561, --Rootspinner's Bloodbough
			179579, --Jaws of the Hungerer
			179492, --Keepcrawler's Gutripper
			180002, --Spire of the Long Dark
			180022, --Rootbulb of the Sinless
			180071, --Shrieking Sinseeker
			180258, --Faeweald Fleshrender
			184241, --Stone-Sentinel Breaker
			----Standard Loot----
			183890, --Zenith Anima Spherule
			183039, --Noble's Birthstone Pendant
			182989, --Corset of Deft Duelist
			183014, --Castellan's Chainlink Grips
			183011, --Courtier' Costume Trousers
			183030, --Enchanted Toe-Tappers
			183023, --Sparkling Glass Slippers
			182983, --Stoneguard Attendant's Boots
			184024, --Macabre Sheet Music	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Necrolord----
	elseif (UnitClass("player") == "Monk" or UnitClass("player") == "Rogue" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 4) then
		local bossName = EJ_GetEncounterInfo(2426)
		local lootTable = {
			----Necrolord----
			184244, --Biting Gutsliver Shank
			184247, --Grip of the Dead
			184248, --Blightforged Twinblade
			184249, --Staff of the Lichsworn Lieutenant
			184250, --Deadeye Blunderbuss
			184251, --Ossified Broadaxe
			184252, --Aranakk Torture Device
			184253, --Abdomen Chopper
			184254, --Plaguespine Sickle
			184255, --Gristlegore Hacker
			----Standard Loot----
			183890, --Zenith Anima Spherule
			183039, --Noble's Birthstone Pendant
			182989, --Corset of Deft Duelist
			183014, --Castellan's Chainlink Grips
			183011, --Courtier' Costume Trousers
			183030, --Enchanted Toe-Tappers
			183023, --Sparkling Glass Slippers
			182983, --Stoneguard Attendant's Boots
			184024, --Macabre Sheet Music	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Standard Loot----
	else
		local bossName = EJ_GetEncounterInfo(2426)
		local lootTable = {
			----Standard Loot----
			183890, --Zenith Anima Spherule
			183039, --Noble's Birthstone Pendant
			182989, --Corset of Deft Duelist
			183014, --Castellan's Chainlink Grips
			183011, --Courtier' Costume Trousers
			183030, --Enchanted Toe-Tappers
			183023, --Sparkling Glass Slippers
			182983, --Stoneguard Attendant's Boots
			184024, --Macabre Sheet Music	
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	end

	-----------------------------------
	----- Sludgefist
	-----------------------------------
	local bossName = EJ_GetEncounterInfo(2394)
	local lootTable = {
		182999, --Rampaging Giant's Chestplate
		182984, --Colossal Plate Gauntlets
		183022, --Impossibly Oversized Mitts
		183005, --Heedless Pugilist's Harness
		183016, --Load-Bearing Belt
		182981, --Leggings of Lethal Reverberations
		183006, --Stoneclas Stompers
		184026, --Hateful Chain	
	}
	self:RegisterBossLoot(Castle, lootTable, bossName)

	-----------------------------------
	----- Stone Legion Generals ---- 183895 + 183894 Offhand Token Monk, Paladin, Priest, Warrior + Druid, Mage, Shaman, Warlock
	-----------------------------------
	----Kyrianer----
	if (UnitClass("player") == "Druid" or UnitClass("player") == "Mage" or UnitClass("player") == "Monk" or UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Shaman" or UnitClass("player") == "Warlock" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 1) then
		local bossName = EJ_GetEncounterInfo(2425)
		local lootTable = {
			----Kyrianer----
			174315, --Chyrus's Crest of Hope
			177870, --Thenios's Beacon of Foresight
			----Standard Loot----
			183895, --Apongee Anima Bead
			183894, --Thaumaturgic Anima Bead
			183029, --Wicked Flanker's Gorget
			183032, --Crest of the Legionnaire General
			182998, --Robes of the Cursed Commando
			182991, --Oathsworn Soldier's Guantlets
			183002, --Ceremonial Parade Legguards
			184027, --Stone Legion Heraldry
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Venthyr----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Mage" or UnitClass("player") == "Monk" or UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Shaman" or UnitClass("player") == "Warlock" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 2) then
		local bossName = EJ_GetEncounterInfo(2425)
		local lootTable = {
			----Venthyr Token 183892----
			182399, --Stonewrought Gargoyles Barrier
			182400, --Master Stonewright's Chisel
			----Standard Loot----
			183895, --Apongee Anima Bead
			183894, --Thaumaturgic Anima Bead
			183029, --Wicked Flanker's Gorget
			183032, --Crest of the Legionnaire General
			182998, --Robes of the Cursed Commando
			182991, --Oathsworn Soldier's Guantlets
			183002, --Ceremonial Parade Legguards
			184027, --Stone Legion Heraldry
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----NightFae----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Mage" or UnitClass("player") == "Monk" or UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Shaman" or UnitClass("player") == "Warlock" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 3) then
		local bossName = EJ_GetEncounterInfo(2425)
		local lootTable = {
			----NightFae----
			179566, --Lyre of Decadent Frivolity
			179611, --Bulwark of the Unbowed
			----Standard Loot----
			183895, --Apongee Anima Bead
			183894, --Thaumaturgic Anima Bead
			183029, --Wicked Flanker's Gorget
			183032, --Crest of the Legionnaire General
			182998, --Robes of the Cursed Commando
			182991, --Oathsworn Soldier's Guantlets
			183002, --Ceremonial Parade Legguards
			184027, --Stone Legion Heraldry
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Necrolord----
	elseif (UnitClass("player") == "Druid" or UnitClass("player") == "Mage" or UnitClass("player") == "Monk" or UnitClass("player") == "Paladin" or UnitClass("player") == "Priest" or UnitClass("player") == "Shaman" or UnitClass("player") == "Warlock" or UnitClass("player") == "Warrior") and (C_Covenants.GetActiveCovenantID() == 4) then
		local bossName = EJ_GetEncounterInfo(2425)
		local lootTable = {
			----Necrolord----
			184257, --Burden of the Protectorate
			184258, --Malevolent Invoker's Crystal
			----Standard Loot----
			183895, --Apongee Anima Bead
			183894, --Thaumaturgic Anima Bead
			183029, --Wicked Flanker's Gorget
			183032, --Crest of the Legionnaire General
			182998, --Robes of the Cursed Commando
			182991, --Oathsworn Soldier's Guantlets
			183002, --Ceremonial Parade Legguards
			184027, --Stone Legion Heraldry
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Standard Loot----
	else
		local bossName = EJ_GetEncounterInfo(2425)
		local lootTable = {
			----Standard Loot----
			183895, --Apongee Anima Bead
			183894, --Thaumaturgic Anima Bead
			183029, --Wicked Flanker's Gorget
			183032, --Crest of the Legionnaire General
			182998, --Robes of the Cursed Commando
			182991, --Oathsworn Soldier's Guantlets
			183002, --Ceremonial Parade Legguards
			184027, --Stone Legion Heraldry
		}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	end
	-----------------------------------
	----- Sire Denathrius ---- 183896 + 183897 + 183898 + 183899 Weapon Token All Class
	-----------------------------------
	----Kyrianer----
	if (C_Covenants.GetActiveCovenantID() == 1) then
		local bossName = EJ_GetEncounterInfo(2424)
		local lootTable = {
			----Kyrianer----
			174302, --Labrys of the Loyal Larion
			177849, --Soulbearer's Blade of Salvation
			177855, --Spellblade of Antiquity
			177860, --Silvered Recurve of Reconciliation
			177865, --Faithful Sidearm
			177872, --Archon's Guiding Glaive
			178975, --Vesiphone's Vesper of Reflection
			180315, --Polemarch's Scepter of Faith
			184243, --Praetorian Wingblade
			184270, --Disciple's Peacebound Poniard
			184271, --Xandria's Kopis of Courage
			184274, --Reaver of Renewed Resolve
			----Standard Loot----
			183896, --Abominable Anima Spherule
			183897, --Mystic Anima Spherule
			183898, --Venerated Anima Spherule
			183899, --Zenith Anima Spherule
			182997, --Daidem of Imperious Desire
			182980, --Sadist's Sinister Mask
			183003, --Pauldrons of Fatal Finality
			183020, --Shawl of the Penitent
			183036, --Most Regal Signet of Sire Denathrius
			184028, --Cabalist's Hymnal
			184030, --Dreadfire Vessel
			184029, --Manabound Mirror
			184031, --Sanguine Vintage
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Venthyr----
	elseif (C_Covenants.GetActiveCovenantID() == 2) then
		local bossName = EJ_GetEncounterInfo(2424)
		local lootTable = {
			----Venthyr Token 183892----
			182388, --Nathrian Assassin's Backbiter
			182389, --Nathrian Crusader's Bastard Sword
			182390, --Talons of the Legion Generals
			182391, --Sinstealer's Sentencing Gavel
			182392, --Sinbearer's Absolution Staff
			182393, --Rod of the Stone Sentinels
			182394, --Dredwing Barbed Swordbreaker
			182395, --Stoneborn Terrorblade
			182396, --Hungering Ritualist's Animablade
			182397, --Legion General's Glaivewing
			182398, --Dredfang Ironspitter
			----Standard Loot----
			183896, --Abominable Anima Spherule
			183897, --Mystic Anima Spherule
			183898, --Venerated Anima Spherule
			183899, --Zenith Anima Spherule
			182997, --Daidem of Imperious Desire
			182980, --Sadist's Sinister Mask
			183003, --Pauldrons of Fatal Finality
			183020, --Shawl of the Penitent
			183036, --Most Regal Signet of Sire Denathrius
			184028, --Cabalist's Hymnal
			184030, --Dreadfire Vessel
			184029, --Manabound Mirror
			184031, --Sanguine Vintage
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----NightFae----
	elseif (C_Covenants.GetActiveCovenantID() == 3) then
		local bossName = EJ_GetEncounterInfo(2424)
		local lootTable = {
			----NightFae----
			179497, --Fang of the Winged Sentry
			179527, --Gargon-Tamer's Spear
			179544, --Ashcarved Sledgehammer
			179557, --Baron's Oaken Scepter
			179577, --Stonesnap Mandibles
			180000, --Staff of the Penitent
			180023, --Wand of Arboreal Artifice
			180073, --Heartstalker's Longbow
			180260, --Deathdancer's Warglaive
			182351, --Mace of the Unburdened
			----Standard Loot----
			183896, --Abominable Anima Spherule
			183897, --Mystic Anima Spherule
			183898, --Venerated Anima Spherule
			183899, --Zenith Anima Spherule
			182997, --Daidem of Imperious Desire
			182980, --Sadist's Sinister Mask
			183003, --Pauldrons of Fatal Finality
			183020, --Shawl of the Penitent
			183036, --Most Regal Signet of Sire Denathrius
			184028, --Cabalist's Hymnal
			184030, --Dreadfire Vessel
			184029, --Manabound Mirror
			184031, --Sanguine Vintage
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Necrolord----
	elseif (C_Covenants.GetActiveCovenantID() == 4) then
		local bossName = EJ_GetEncounterInfo(2424)
		local lootTable = {
			----Necrolord----
			184256, --Vicious Goreripper Shank
			184259, --Grasp from the Grave
			184260, --Warglaive of the Hidden Fiend
			184261, --Greatstaff of the Lichsworn General
			184262, --Deadeye Cannon
			184263, --Ossified Greataxe
			184264, --Krexus's Bloodletting Polearm
			184265, --Abdomen Splitter
			184266, --Fleshscourge Sickle
			184267, --Skullcleaver of the Merciless One
			----Standard Loot----
			183896, --Abominable Anima Spherule
			183897, --Mystic Anima Spherule
			183898, --Venerated Anima Spherule
			183899, --Zenith Anima Spherule
			182997, --Daidem of Imperious Desire
			182980, --Sadist's Sinister Mask
			183003, --Pauldrons of Fatal Finality
			183020, --Shawl of the Penitent
			183036, --Most Regal Signet of Sire Denathrius
			184028, --Cabalist's Hymnal
			184030, --Dreadfire Vessel
			184029, --Manabound Mirror
			184031, --Sanguine Vintage
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	----Standard Loot----
	else
		local bossName = EJ_GetEncounterInfo(2424)
		local lootTable = {
			----Standard Loot----
			183896, --Abominable Anima Spherule
			183897, --Mystic Anima Spherule
			183898, --Venerated Anima Spherule
			183899, --Zenith Anima Spherule
			182997, --Daidem of Imperious Desire
			182980, --Sadist's Sinister Mask
			183003, --Pauldrons of Fatal Finality
			183020, --Shawl of the Penitent
			183036, --Most Regal Signet of Sire Denathrius
			184028, --Cabalist's Hymnal
			184030, --Dreadfire Vessel
			184029, --Manabound Mirror
			184031, --Sanguine Vintage
			}
		self:RegisterBossLoot(Castle, lootTable, bossName)
	end

	--------------------------------------------------
	----- Trash Loot
	--------------------------------------------------
	local bossName = "Trash Loot"
	local lootTable = {
		183035, --Ardent Sunstar Signet
		181393, --Sylvan Whiteshield
		183008, --Supple Supplicant's Gloves
		183017, --Acolyte's Velvet Bindings
		183010, --Stud-Scarred Footwear
		182978, --Barkweave Wristwraps
		182990, --Legionnaire's Bloodstained Sabatons
		182982, --Watchful Arbelist's Bracers
		183013, --Fallen Templar's Gauntlets
		183031, --Soldier's Stoneband Wristguards
		184778, --Decadent Nathrian Shawl
	}
	self:RegisterBossLoot(Castle, lootTable, bossName)
end  

  

function CastleRaid:InitializeZoneDetect(ZoneDetect)
	ZoneDetect:RegisterMapID(1735,   Castle)
	ZoneDetect:RegisterNPCID(172145, Castle, 1) --Shriekwing
	ZoneDetect:RegisterNPCID(165066, Castle, 2) --Huntsman Altimor
	ZoneDetect:RegisterNPCID(164261, Castle, 3) --Hungering Destroyer
	ZoneDetect:RegisterNPCID(166644, Castle, 4) --Artificer Xy'mox
	ZoneDetect:RegisterNPCID(24664,  Castle, 5) --Sun King's Salvation
	ZoneDetect:RegisterNPCID(167517, Castle, 6) --Lady Inerva Darkvein
	ZoneDetect:RegisterNPCID(166971, Castle, 7) --The Council of Blood
	ZoneDetect:RegisterNPCID(174733, Castle, 8) --Sludgefist
	ZoneDetect:RegisterNPCID(165318, Castle, 9) --Stone Legion Generals
	ZoneDetect:RegisterNPCID(168938, Castle, 10) --Sire Denathrius
end