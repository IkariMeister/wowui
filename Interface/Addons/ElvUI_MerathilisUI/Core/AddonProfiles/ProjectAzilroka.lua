local MER, E, L, V, P, G = unpack(select(2, ...))

--Cache global variables
--Lua Variables
local _G = _G
--WoW API / Variables
-- GLOBALS:

function MER:LoadPAProfile()
	--[[----------------------------------
	--	ProjectAzilroka - Settings
	--]]----------------------------------
	local PA = _G.ProjectAzilroka
	PA.data:SetProfile('MerathilisUI')

	PA.db["AuraReminder"]["Enable"] = false

	PA.db["BigButtons"]["Enable"] = false

	PA.db["BrokerLDB"]["Enable"] = false

	--PA.db["Cooldown"]["Enable"] = false

	PA.db["EnhancedFriendsList"]["Enable"] = true
	PA.db["EnhancedFriendsList"]["InfoFontSize"] = 10
	PA.db["EnhancedFriendsList"]["App"] = "Animated"
	PA.db["EnhancedFriendsList"]["StatusIconPack"] = "Square"
	PA.db["EnhancedFriendsList"]["ShowStatusHighlight"] = true
	PA.db["EnhancedFriendsList"]["Texture"] = "RenAscensionL"
	PA.db["EnhancedFriendsList"]["NameFontSize"] = 11
	PA.db["EnhancedFriendsList"]["NameFont"] = "Merathilis Expressway"
	PA.db["EnhancedFriendsList"]["InfoFont"] = "Merathilis Expressway"

	PA.db["EnhancedShadows"]["Enable"] = false

	PA.db['DragonOverlay']["Enable"] = false

	PA.db["iFilger"]["Enable"] = false

	PA.db["MouseoverAuras"]["Enable"] = false

	PA.db['MovableFrames']['Enable'] = false

	PA.db["OzCooldowns"]["Enable"] = false
	PA.db["OzCooldowns"]["StackFont"] = "Merathilis Expressway"
	PA.db["OzCooldowns"]["StatusBarTexture"] = "RenAscensionL"
	PA.db["OzCooldowns"]["StatusBarGradient"] = true
	PA.db["OzCooldowns"]["Tooltips"] = false
	PA.db["OzCooldowns"]["Size"] = 30

	PA.db['QuestSounds']['Enable'] = false

	PA.db['SquareMinimapButtons']['Enable'] = false

	PA.db["stAddonManager"]["Enable"] = true
	PA.db["stAddonManager"]["NumAddOns"] = 15
	PA.db["stAddonManager"]["ButtonHeight"] = 20
	PA.db["stAddonManager"]["ButtonWidth"] = 20
	PA.db["stAddonManager"]["Font"] = "Merathilis Expressway"
	PA.db["stAddonManager"]["ClassColor"] = true
	PA.db["stAddonManager"]["CheckTexture"] = "RenAscensionL"
end
