--[[
AdiBags_Herbalism - Adds Herbalism in your bags, using AdiBags inventory manager.
Copyright 2017 Ramon_ (rsfaddonwow@gmail.com)
All rights reserved.
--]]

local addonName, addon = ...
local AdiBags = LibStub('AceAddon-3.0'):GetAddon('AdiBags')

local L = addon.L
local BIext = addon.BIext
local MatchIDs
local Tooltip

local function MatchIDs_Init(self)
  local Result = {}
  
  IDs = {}
  
  AddToSet(Result, IDs)

	if self.db.profile.flagElemental then
		IDs = {
			10286, -- Heart of the Wild 
			120945, -- Primal Spirit 
			21886, -- Primal Life 
			22575, -- Mote of Life 
			35625, -- Eternal Life 
			37704, -- Crystallized Life 
			52329, -- Volatile Life 
			76061, -- Spirit of Harmony 
			89112, -- Mote of Harmony 
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagFoodDrink then
		IDs = {
			11951, -- Whipper Root Tuber 
			1401, -- Riverpaw Tea Leaf 
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagHerb then
		IDs = {
			108318, -- Mageroyal Petal 
			108319, -- Earthroot Stem 
			108320, -- Briarthorn Bramble 
			108321, -- Swiftthistle Leaf 
			108322, -- Bruiseweed Stem 
			108323, -- Wild Steelbloom Petal 
			108324, -- Kingsblood Petal 
			108325, -- Liferoot Stem 
			108326, -- Khadgar's Whisker Stem 
			108327, -- Grave Moss Leaf 
			108328, -- Fadeleaf Petal 
			108329, -- Dragon's Teeth Stem 
			108330, -- Stranglekelp Blade 
			108331, -- Goldthorn Bramble 
			108332, -- Firebloom Petal 
			108333, -- Purple Lotus Petal 
			108334, -- Arthas' Tears Petal 
			108335, -- Sungrass Stalk 
			108336, -- Blindweed Stem 
			108337, -- Ghost Mushroom Cap 
			108338, -- Gromsblood Leaf 
			108339, -- Dreamfoil Blade 
			108340, -- Golden Sansam Leaf 
			108341, -- Mountain Silversage Stalk 
			108342, -- Sorrowmoss Leaf 
			108343, -- Icecap Petal 
			108344, -- Felweed Stalk 
			108345, -- Dreaming Glory Petal 
			108346, -- Ragveil Cap 
			108347, -- Terocone Leaf 
			108348, -- Ancient Lichen Petal 
			108349, -- Netherbloom Leaf 
			108350, -- Nightmare Vine Stem 
			108351, -- Mana Thistle Leaf 
			108352, -- Goldclover Leaf 
			108353, -- Adder's Tongue Stem 
			108354, -- Tiger Lily Petal 
			108355, -- Lichbloom Stalk 
			108356, -- Icethorn Bramble 
			108357, -- Talandra's Rose Petal 
			108358, -- Deadnettle Bramble 
			108359, -- Fire Leaf Bramble 
			108360, -- Cinderbloom Petal 
			108361, -- Stormvine Stalk 
			108362, -- Azshara's Veil Stem 
			108363, -- Heartblossom Petal 
			108364, -- Twilight Jasmine Petal 
			108365, -- Whiptail Stem 
			109124, -- Frostweed 
			109125, -- Fireweed 
			109126, -- Gorgrond Flytrap 
			109127, -- Starflower 
			109128, -- Nagrand Arrowbloom 
			109129, -- Talador Orchid 
			109624, -- Broken Frostweed Stem 
			109625, -- Broken Fireweed Stem 
			109626, -- Gorgrond Flytrap Ichor 
			109627, -- Starflower Petal 
			109628, -- Nagrand Arrowbloom Petal 
			109629, -- Talador Orchid Petal 
			124101, -- Aethril 
			124102, -- Dreamleaf 
			124103, -- Foxflower 
			124104, -- Fjarnskaggl 
			124105, -- Starlight Rose 
			124106, -- Felwort 
			128304, -- Yseralline Seed 
			129284, -- Aethril Seed 
			129285, -- Dreamleaf Seed 
			129286, -- Foxflower Seed 
			129287, -- Fjarnskaggl Seed 
			129288, -- Starlight Rose Seed 
			129289, -- Felwort Seed 
			13463, -- Dreamfoil 
			13464, -- Golden Sansam 
			13465, -- Mountain Silversage 
			13466, -- Sorrowmoss 
			13467, -- Icecap 
			13468, -- Black Lotus 
			19726, -- Bloodvine 
			19727, -- Blood Scythe 
			22785, -- Felweed 
			22786, -- Dreaming Glory 
			22787, -- Ragveil 
			22788, -- Flame Cap 
			22789, -- Terocone 
			22790, -- Ancient Lichen 
			22791, -- Netherbloom 
			22792, -- Nightmare Vine 
			22793, -- Mana Thistle 
			22794, -- Fel Lotus 
			22797, -- Nightmare Seed 
			2447, -- Peacebloom 
			2449, -- Earthroot 
			2450, -- Briarthorn 
			2452, -- Swiftthistle 
			2453, -- Bruiseweed 
			3355, -- Wild Steelbloom 
			3356, -- Kingsblood 
			3357, -- Liferoot 
			3358, -- Khadgar's Whisker 
			3369, -- Grave Moss 
			36901, -- Goldclover 
			36902, -- Constrictor Grass 
			36903, -- Adder's Tongue 
			36904, -- Tiger Lily 
			36905, -- Lichbloom 
			36906, -- Icethorn 
			36907, -- Talandra's Rose 
			36908, -- Frost Lotus 
			37921, -- Deadnettle 
			3818, -- Fadeleaf 
			3819, -- Dragon's Teeth 
			3820, -- Stranglekelp 
			3821, -- Goldthorn 
			39970, -- Fire Leaf 
			4625, -- Firebloom 
			52983, -- Cinderbloom 
			52984, -- Stormvine 
			52985, -- Azshara's Veil 
			52986, -- Heartblossom 
			52987, -- Twilight Jasmine 
			52988, -- Whiptail 
			72234, -- Green Tea Leaf 
			72235, -- Silkweed 
			72237, -- Rain Poppy 
			72238, -- Golden Lotus 
			765, -- Silverleaf 
			785, -- Mageroyal 
			79010, -- Snow Lily 
			79011, -- Fool's Cap 
			8153, -- Wildvine 
			8831, -- Purple Lotus 
			8836, -- Arthas' Tears 
			8838, -- Sungrass 
			8839, -- Blindweed 
			8845, -- Ghost Mushroom 
			8846, -- Gromsblood 
			97619, -- Torn Green Tea Leaf 
			97620, -- Rain Poppy Petal 
			97621, -- Silkweed Stem 
			97622, -- Snow Lily Petal 
			97623, -- Fool's Cap Spores 
			97624, -- Desecrated Herb Pod 
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagJunk then
		IDs = {
			130318, -- Exploded Pocked Friend 
			130319, -- Exploded Pocket Friend 
			17034, -- Maple Seed 
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagMiscWeapons then
		IDs = {
			85663, -- Herbalist's Spade 
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagOtherMiscellaneous then
		IDs = {
			89639, -- Desecrated Herb
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagOtherTradeGoods then
		IDs = {
			127759, -- Felblight
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagOtherConsumables then
		IDs = {
			11952, -- Night Dragon's Breath 
			130257, -- Pocket Friend 
			139491, -- Forgotten Techniques of the Broken Isles 
			18297, -- Thornling Seed 
			22795, -- Fel Blossom 
			23329, -- Enriched Lasher Root 
			39969, -- Fire Seed 
			63122, -- Lifegiving Seed 
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagQuest then
		IDs = {
			11018, -- Un'Goro Soil 
			11020, -- Evergreen Pouch 
			11022, -- Packet of Tharlendris Seeds 
			11024, -- Evergreen Herb Casing 
			11040, -- Morrowgrain 
			11514, -- Fel Creep 
			16205, -- Gaea Seed 
			16208, -- Enchanted Gaea Seeds 
			17760, -- Seed of Life 
			22094, -- Bloodkelp 
			23788, -- Tree Seedlings 
			24245, -- Glowcap 
			24246, -- Sanguine Hibiscus 
			24401, -- Unidentified Plant Parts 
			31300, -- Ironroot Seeds 
			32468, -- Netherdust Pollen 
			5056, -- Root Sample 
			5168, -- Timberling Seed 
		}
		AddToSet(Result, IDs)
	end

	if self.db.profile.flagReagent then
		IDs = {
			17035, -- Stranglethorn Seed 
			17036, -- Ashwood Seed 
			17037, -- Hornbeam Seed 
			17038, -- Ironwood Seed 
			22147, -- Flintweed Seed 
			44614, -- Starleaf Seed 
		}
		AddToSet(Result, IDs)
	end
  
  return Result
end

local function Tooltip_Init()
  local Result, leftside = CreateFrame("GameTooltip"), {}
  for i = 1,6 do
    local L,R = Result:CreateFontString(), Result:CreateFontString()
    L:SetFontObject(GameFontNormal)
    R:SetFontObject(GameFontNormal)
    Result:AddFontStrings(L,R)
    leftside[i] = L
  end
  Result.leftside = leftside
  return Result
end

local function unescape(String)
  local Result = tostring(String)
  Result = gsub(Result, "|c........", "") -- Remove color start.
  Result = gsub(Result, "|r", "") -- Remove color end.
  Result = gsub(Result, "|H.-|h(.-)|h", "%1") -- Remove links.
  Result = gsub(Result, "|T.-|t", "") -- Remove textures.
  Result = gsub(Result, "{.-}", "") -- Remove raid target icons.
  return Result
end

function AddToSet(Set, List)
  for _, v in ipairs(List) do
    Set[v] = true
  end
end

local setFilter = AdiBags:RegisterFilter(L["Herbalism"], 92, 'ABEvent-1.0')
setFilter.uiName = L["Herbalism"]
setFilter.uiDesc = L["Herbalism items group, Filters based on item Hyjal Expedition Bag."]

function setFilter:OnInitialize()
	self.db = AdiBags.db:RegisterNamespace(L["Herbalism"], {
		profile = {
			flagElemental = true, 
			flagFoodDrink = true,
			flagHerb = true, 
			flagJunk = true,
			flagMiscWeapons = true,
			flagOtherMiscellaneous = true,
			flagOtherTradeGoods = true,
			flagOtherConsumables = true,
			flagQuest = true,
			flagReagent = true
		},
		char = {  },
	})
end

function setFilter:Update()
  MatchIDs = nil
  self:SendMessage('AdiBags_FiltersChanged')
end

function setFilter:OnEnable()
  AdiBags:UpdateFilters()
end

function setFilter:OnDisable()
  AdiBags:UpdateFilters()
end

function setFilter:Filter(slotData)
  MatchIDs = MatchIDs or MatchIDs_Init(self)
  if MatchIDs[slotData.itemId] then
    return L["Herbalism"]
  elseif self.db.profile.flagShipyard then
    Tooltip = Tooltip or Tooltip_Init()
    Tooltip:SetOwner(UIParent,"ANCHOR_NONE")
    Tooltip:ClearLines()
    if slotData.bag == BANK_CONTAINER then
      Tooltip:SetInventoryItem("player", BankButtonIDToInvSlotID(slotData.slot, nil))
    else
      Tooltip:SetBagItem(slotData.bag, slotData.slot)
    end
    for i = 1,6 do
      local t = unescape(Tooltip.leftside[i]:GetText())
    end
    Tooltip:Hide()
  end
end

function setFilter:GetOptions()
	return {
		flagElemental = {
			name  = L["Elemental"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 10,
		},
		flagFoodDrink = {
			name  = L["Food & Drink"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 20,
		},
		flagHerb = {
			name  = L["Herb"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 30,
		},
		flagJunk = {
			name  = L["Junk"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 40,
		},
		flagMiscWeapons = {
			name  = L["Misc. (Weapons)"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 50,
		},
		flagOtherMiscellaneous = {
			name  = L["Other (Miscellaneous)"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 60,
		},
		flagOtherTradeGoods = {
			name  = L["Other (Trade Goods)"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 70,
		},
		flagOtherConsumables = {
			name  = L["Other Consumables"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 80,
		},
		flagQuest = {
			name  = L["Quest"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 90,
		},
		flagReagent = {
			name  = L["Reagent"],
			desc  = L["Filter / No Filter"],
			type  = 'toggle',
			width = 'double',
			order = 100,
		},
	}, AdiBags:GetOptionHandler(self, false, function() return self:Update() end)
end
