--[[
AdiBags_Herbalism - Adds Herbalism in your bags, using AdiBags inventory manager.
Copyright 2017 Ramon_ (rsfaddonwow@gmail.com)
All rights reserved.
--]]

local addonName, addon = ...

local L = setmetatable({}, {
	__index = function(self, key)
		if key ~= nil then
			rawset(self, key, tostring(key))
		end
		return tostring(key)
	end,
})
addon.L = L

local locale = GetLocale()

------------------------ enUS ------------------------

L["Elemental"] = true
L["Food & Drink"] = true
L["Herb"] = true
L["Junk"] = true
L["Misc. (Weapons)"] = true
L["Other (Miscellaneous)"] = true
L["Other (Trade Goods)"] = true
L["Other Consumables"] = true
L["Quest"] = true
L["Reagent"] = true
L["Filter / No Filter"] = true
L["Herbalism"] = true
L["Herbalism items group, Filters based on item Hyjal Expedition Bag."] = true

------------------------ frFR ------------------------
if locale == "frFR" then

------------------------ deDE ------------------------
elseif locale == "deDE" then

------------------------ esMX ------------------------
elseif locale == "esMX" then

------------------------ ruRU ------------------------
elseif locale == "ruRU" then

------------------------ esES ------------------------
elseif locale == "esES" then

------------------------ zhTW ------------------------
elseif locale == "zhTW" then

------------------------ zhCN ------------------------
elseif locale == "zhCN" then

------------------------ koKR ------------------------
elseif locale == "koKR" then

------------------------ ptBR ------------------------
elseif locale == "ptBR" then

L["Elemental"] = "Elemental"
L["Food & Drink"] = "Comida e Bebida"
L["Herb"] = "Planta"
L["Junk"] = "Lixo"
L["Misc. (Weapons)"] = "Mistas (Armas)"
L["Other (Miscellaneous)"] = "Outro (Diversos)"
L["Other (Trade Goods)"] = "Outro (Bens de Comércio)"
L["Other Consumables"] = "Outros Consumíveis"
L["Quest"] = "Missão"
L["Reagent"] = "Reagente"
L["Filter / No Filter"] = "Filtrar / Não Filtrar"
L["Herbalism"] = "Herborismo"
L["Herbalism items group, Filters based on item Hyjal Expedition Bag."] = "Grupos de Herborismo, Filtros baseado no item Bolsa de Expedição Hyjal."

end

-- Replace remaining true values by their key
for k,v in pairs(L) do if v == true then L[k] = k end end