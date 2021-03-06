local MER, E, L, V, P, G = unpack(select(2, ...))
local module = MER:GetModule('MER_ChatLink')

local _G = _G
local ceil = ceil
local format = format
local gsub = gsub
local pairs = pairs
local select = select
local strmatch = strmatch
local tonumber = tonumber
local tostring = tostring
local unpack = unpack

local ChatFrame_AddMessageEventFilter = ChatFrame_AddMessageEventFilter
local GetItemIcon = GetItemIcon
local GetItemInfo = GetItemInfo
local GetPvpTalentInfoByID = GetPvpTalentInfoByID
local GetSpellTexture = GetSpellTexture
local GetTalentInfoByID = GetTalentInfoByID

local ItemLevelTooltip = E.ScanTooltip
local ItemLevelPattern = gsub(ITEM_LEVEL, "%%d", "(%%d+)")

local IconString = "|T%s:16:18:0:0:64:64:4:60:7:57"

local SearchArmorType = {
	INVTYPE_HEAD = true,
	INVTYPE_SHOULDER = true,
	INVTYPE_CHEST = true,
	INVTYPE_WRIST = true,
	INVTYPE_HAND = true,
	INVTYPE_WAIST = true,
	INVTYPE_LEGS = true,
	INVTYPE_FEET = true
}

local abbrList = {
	INVTYPE_HEAD = L["Head"],
	INVTYPE_NECK = L["Neck"],
	INVTYPE_SHOULDER = L["Shoulders"],
	INVTYPE_CLOAK = L["Back"],
	INVTYPE_CHEST = L["Chest"],
	INVTYPE_WRIST = L["Wrist"],
	INVTYPE_HAND = L["Hands"],
	INVTYPE_WAIST = L["Waist"],
	INVTYPE_LEGS = L["Legs"],
	INVTYPE_FEET = L["Feet"],
	INVTYPE_HOLDABLE = L["Off-Hand"],
	INVTYPE_FINGER = L["Finger"],
	INVTYPE_TRINKET = L["Trinket"]
}

local function AddItemInfo(Hyperlink)
	local id = strmatch(Hyperlink, "Hitem:(%d-):")
	if not id then
		return
	end
	id = tonumber(id)

	if module.db.level or module.db.slot then
		local text, level, extraname, slot
		ItemLevelTooltip:SetOwner(_G.UIParent, "ANCHOR_NONE")
		ItemLevelTooltip:ClearLines()
		ItemLevelTooltip:SetHyperlink(Hyperlink)

		if module.db.level then
			for i = 2, 5 do
				local leftText = _G[ItemLevelTooltip:GetName() .. "TextLeft" .. i]
				if leftText then
					text = leftText:GetText() or ""
					level = strmatch(text, ItemLevelPattern)
					if level then
						break
					end
				end
			end
		end

		local type = select(6, GetItemInfo(id))
		if type == _G.ARMOR and module.db.armorCategory then
			local equipLoc = select(9, GetItemInfo(id))
			if equipLoc ~= "" then
				if SearchArmorType[equipLoc] then
					local armorType = select(7, GetItemInfo(id))
					if E.global.general.locale == "zhTW" or E.global.general.locale == "zhCN" then
						slot = armorType .. (abbrList[equipLoc] or _G[equipLoc])
					else
						slot = armorType .. " " .. (abbrList[equipLoc] or _G[equipLoc])
					end
				else
					slot = abbrList[equipLoc] or _G[equipLoc]
				end
			end
		end

		if type == _G.WEAPON and module.db.weaponCategory then
			local equipLoc = select(9, GetItemInfo(id))
			if equipLoc ~= "" then
				local weaponType = select(7, GetItemInfo(id))
				slot = weaponType or abbrList[equipLoc] or _G[equipLoc]
			end
		end

		if level and extraname then
			Hyperlink = Hyperlink:gsub("|h%[(.-)%]|h", "|h[" .. level .. ":%1:" .. extraname .. "]|h")
		elseif level and slot then
			Hyperlink = Hyperlink:gsub("|h%[(.-)%]|h", "|h[" .. level .. "-" .. slot .. ":%1]|h")
		elseif level then
			Hyperlink = Hyperlink:gsub("|h%[(.-)%]|h", "|h[" .. level .. ":%1]|h")
		elseif slot then
			Hyperlink = Hyperlink:gsub("|h%[(.-)%]|h", "|h[" .. slot .. ":%1]|h")
		end
	end

	if module.db.icon then
		local texture = GetItemIcon(id)
		local icon = format(IconString .. ":255:255:255|t", texture)
		Hyperlink = icon .. " " .. Hyperlink
	end

	return Hyperlink
end

local function AddSpellInfo(Hyperlink)
	local id = strmatch(Hyperlink, "Hspell:(%d-):")
	if not id then
		return
	end

	if module.db.icon then
		local texture = GetSpellTexture(tonumber(id))
		local icon = format(IconString .. ":255:255:255|t", texture)
		Hyperlink = icon .. " |cff71d5ff" .. Hyperlink .. "|r" -- I dk why the color is needed, but worked!
	end

	return Hyperlink
end

local function AddEnchantInfo(Hyperlink)
	local id = strmatch(Hyperlink, "Henchant:(%d-)\124")
	if not id then
		return
	end

	if module.db.icon then
		local texture = GetSpellTexture(tonumber(id))
		local icon = format(IconString .. ":255:255:255|t", texture)
		Hyperlink = icon .. " " .. Hyperlink
	end

	return Hyperlink
end

local function AddPvPTalentInfo(Hyperlink)
	local id = strmatch(Hyperlink, "Hpvptal:(%d-)|")
	if not id then
		return
	end

	if module.db.icon then
		local texture = select(3, GetPvpTalentInfoByID(tonumber(id)))
		local icon = format(IconString .. ":255:255:255|t", texture)
		Hyperlink = icon .. " " .. Hyperlink
	end

	return Hyperlink
end

local function AddTalentInfo(Hyperlink)
	local id = strmatch(Hyperlink, "Htalent:(%d-)|")
	if not id then
		return
	end

	if module.db.icon then
		local texture = select(3, GetTalentInfoByID(tonumber(id)))
		local icon = format(IconString .. ":255:255:255|t", texture)
		Hyperlink = icon .. " " .. Hyperlink
	end

	return Hyperlink
end

function module:Filter(event, msg, ...)
	if module.db.enable then
		msg = gsub(msg, "(|Hitem:%d+:.-|h.-|h)", AddItemInfo)
		msg = gsub(msg, "(|Hspell:%d+:%d+|h.-|h)", AddSpellInfo)
		msg = gsub(msg, "(|Henchant:%d+|h.-|h)", AddEnchantInfo)
		msg = gsub(msg, "(|Htalent:%d+|h.-|h)", AddTalentInfo)
		msg = gsub(msg, "(|Hpvptal:%d+|h.-|h)", AddPvPTalentInfo)
	end

	return false, msg, ...
end

function module:Initialize()
	self.db = E.db.mui.chat.chatLink

	ChatFrame_AddMessageEventFilter("CHAT_MSG_ACHIEVEMENT", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_COMMUNITIES_CHANNEL", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_EMOTE", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_LOOT", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_TRADESKILLS", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", self.Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", self.Filter)

	self.Initialized = true
end

function module:ProfileUpdate()
	self.db = E.db.mui.chat.chatLink

	if self.db.enable and not self.Initialized then
		self:Initialize()
	end
end

MER:RegisterModule(module:GetName())
