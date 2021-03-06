-------------------------------------------------------------------------------
-- ElvUI_ChatTweaks By Crackpot (US, Thrall)
--------------------------------------------------------------------------------
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("ElvUI_ChatTweaks", "esES", false)
if not L then return end

L["   |cff00ff00%s|r - %s"] = true
L["   |cff00ff00%s|r or |cff00ff00%s|r - %s"] = "   |cff00ff00%s|r o |cff00ff00%s|r - %s"
--[[Translation missing --]]
L["   |cff00ff00/ct %s|r - %s"] = "   |cff00ff00/ct %s|r - %s"
--[[Translation missing --]]
L["   |cff00ff00/ct %s|r or |cff00ff00%s|r - %s"] = "   |cff00ff00/ct %s|r or |cff00ff00%s|r - %s"
L[ [=[  Achievement Points
]=] ] = "Puntos de Logros"
--[[Translation missing --]]
L[ [=[  Conquest Points
]=] ] = [=[  Conquest Points
]=]
L[ [=[  Honor Points
]=] ] = "Puntos de Honor"
L[ [=[  Justice Points
]=] ] = "Puntos de Justicia"
L[ [=[  Valor Points
]=] ] = "Puntos de Valor"
--[[Translation missing --]]
L[" %s Progress: Completed on %s%s|r/%s%s|r/%s%s|r"] = " %s Progress: Completed on %s%s|r/%s%s|r/%s%s|r"
--[[Translation missing --]]
L[" |cFFff5a00(Upgrade)|r"] = " |cFFff5a00(Upgrade)|r"
--[[Translation missing --]]
L[" |cffffff00%d|r Total Modules (|cff00ff00%d|r Enabled, |cffff0000%d|r Disabled)"] = " |cffffff00%d|r Total Modules (|cff00ff00%d|r Enabled, |cffff0000%d|r Disabled)"
--[[Translation missing --]]
L[" isn't a number."] = " isn't a number."
--[[Translation missing --]]
L[" isn't a recognized variable or number."] = " isn't a recognized variable or number."
--[[Translation missing --]]
L[ [=[

|cffff0000NOTE:|r  If this addon starts to use a substantial amount of memory, simply reset the name data and it will return to a normal level.]=] ] = [=[

|cffff0000NOTE:|r  If this addon starts to use a substantial amount of memory, simply reset the name data and it will return to a normal level.]=]
--[[Translation missing --]]
L[ [=[

|cffff0000NOTE:|r  If this addon starts to use a substantial amount of memory, simply reset the name data and it will return to a normal level.

Addon Usage: |cff00ff00%s|r]=] ] = [=[

|cffff0000NOTE:|r  If this addon starts to use a substantial amount of memory, simply reset the name data and it will return to a normal level.

Addon Usage: |cff00ff00%s|r]=]
--[[Translation missing --]]
L["$EMPTY$"] = "$EMPTY$"
--[[Translation missing --]]
L["% Owned"] = "% Owned"
--[[Translation missing --]]
L["% Unowned"] = "% Unowned"
--[[Translation missing --]]
L[ [=[%s  Conquest Cap
]=] ] = [=[%s  Conquest Cap
]=]
--[[Translation missing --]]
L[ [=[%s  Justice Cap
]=] ] = [=[%s  Justice Cap
]=]
--[[Translation missing --]]
L[ [=[%s  Valor Cap
]=] ] = [=[%s  Valor Cap
]=]
--[[Translation missing --]]
L["%s or %s"] = "%s or %s"
--[[Translation missing --]]
L["%s reputation left until %s with %s."] = "%s reputation left until %s with %s."
--[[Translation missing --]]
L["%s reputation needed until %s with %s."] = "%s reputation needed until %s with %s."
--[[Translation missing --]]
L[ [=[%s, %s, %s  Player's Money
]=] ] = [=[%s, %s, %s  Player's Money
]=]
--[[Translation missing --]]
L[ [=[%s, %s, %s  Player's Stats
]=] ] = [=[%s, %s, %s  Player's Stats
]=]
--[[Translation missing --]]
L["%sChat Tweaks|r"] = "%sChat Tweaks|r"
--[[Translation missing --]]
L["%sElvUI Chat Tweaks|r by |cff0070deCrackpotx|r"] = "%sElvUI Chat Tweaks|r by |cff0070deCrackpotx|r"
--[[Translation missing --]]
L["(|HBNplayer.-|h): whispers:"] = "(|HBNplayer.-|h): whispers:"
--[[Translation missing --]]
L["(|Hplayer.-|h) says:"] = "(|Hplayer.-|h) says:"
--[[Translation missing --]]
L["(|Hplayer.-|h) whispers:"] = "(|Hplayer.-|h) whispers:"
--[[Translation missing --]]
L[", removing from list"] = ", removing from list"
--[[Translation missing --]]
L["/tt"] = "/tt"
--[[Translation missing --]]
L["|cff%sHex:|r %s, |cffff0000Red:|r %s, |cff00ff00Green:|r %s, |cff0000ffBlue:|r %s"] = "|cff%sHex:|r %s, |cffff0000Red:|r %s, |cff00ff00Green:|r %s, |cff0000ffBlue:|r %s"
--[[Translation missing --]]
L["|cff00ff00%d|r Custom %s Being Used"] = "|cff00ff00%d|r Custom %s Being Used"
--[[Translation missing --]]
L["|cff00ff00%s|r"] = "|cff00ff00%s|r"
--[[Translation missing --]]
L["|cff00ff00%s|r %s"] = "|cff00ff00%s|r %s"
--[[Translation missing --]]
L["|cff00ff00%s|r or |cff00ff00%s|r %s"] = "|cff00ff00%s|r or |cff00ff00%s|r %s"
--[[Translation missing --]]
L["|cff00ff00%s|r or |cff00ff00%s|r or |cff00ff00%s|r"] = "|cff00ff00%s|r or |cff00ff00%s|r or |cff00ff00%s|r"
--[[Translation missing --]]
L["|cff00ff00Enabled|r"] = "|cff00ff00Enabled|r"
--[[Translation missing --]]
L["|cff00ff00Keybind options are solely handled by the Keybinding interface provided by WoW itself.|r"] = "|cff00ff00Keybind options are solely handled by the Keybinding interface provided by WoW itself.|r"
--[[Translation missing --]]
L["|cFF5cb4f8Pet Battle - Tale of the Tape|r"] = "|cFF5cb4f8Pet Battle - Tale of the Tape|r"
--[[Translation missing --]]
L["|cffc7c7cfs|r"] = "|cffc7c7cfs|r"
--[[Translation missing --]]
L["|cFFccff00Not Owned|r"] = "|cFFccff00Not Owned|r"
--[[Translation missing --]]
L["|cffeda55fc|r"] = "|cffeda55fc|r"
--[[Translation missing --]]
L["|cffff0000Disabled|r"] = "|cffff0000Disabled|r"
--[[Translation missing --]]
L["|cffff0000Item|r |cffffffff\"%s\"|r |cffff0000does not exist.|r"] = "|cffff0000Item|r |cffffffff\"%s\"|r |cffff0000does not exist.|r"
--[[Translation missing --]]
L["|cffff0000No modules found.|r"] = "|cffff0000No modules found.|r"
--[[Translation missing --]]
L["|cffff0000The Chat Frame you chose to output reputation changes,|r |cffffffff%s|r|cffff0000, does not exist."] = "|cffff0000The Chat Frame you chose to output reputation changes,|r |cffffffff%s|r|cffff0000, does not exist."
--[[Translation missing --]]
L["|cffff9000Not in Pet Journal|r"] = "|cffff9000Not in Pet Journal|r"
--[[Translation missing --]]
L["|cffff9000Pet Journal:|r %s"] = "|cffff9000Pet Journal:|r %s"
--[[Translation missing --]]
L["|cffffc080Alts:|r %s"] = "|cffffc080Alts:|r %s"
--[[Translation missing --]]
L["|cffffd700g|r"] = "|cffffd700g|r"
--[[Translation missing --]]
L["|cffffff00Character already in a guild."] = "|cffffff00Character already in a guild."
--[[Translation missing --]]
L["|cffffff00Character already in your guild."] = "|cffffff00Character already in your guild."
--[[Translation missing --]]
L["|cffffff00This abbreviation is unknown."] = "|cffffff00This abbreviation is unknown."
--[[Translation missing --]]
L["|cffffff00Unable to execute secure command.|r |cffffffff%s|r"] = "|cffffff00Unable to execute secure command.|r |cffffffff%s|r"
--[[Translation missing --]]
L["|cffffff00Usage: /ccolor <class>|r"] = "|cffffff00Usage: /ccolor <class>|r"
--[[Translation missing --]]
L["|cffffff00Usage: /fake <id or link> <date in MM/DD/YY format>|r"] = "|cffffff00Usage: /fake <id or link> <date in MM/DD/YY format>|r"
--[[Translation missing --]]
L["|cffffff00Usage: /ginvite <name>|r"] = "|cffffff00Usage: /ginvite <name>|r"
--[[Translation missing --]]
L["|cffffff00Usage: /gkick <name>|r"] = "|cffffff00Usage: /gkick <name>|r"
--[[Translation missing --]]
L["|cffffff00Usage: /hextorgb <hex code>|r"] = "|cffffff00Usage: /hextorgb <hex code>|r"
--[[Translation missing --]]
L["|cffffff00Usage: /in <delay> <command>|r"] = "|cffffff00Usage: /in <delay> <command>|r"
--[[Translation missing --]]
L["|cffffff00Usage: /rgbtohex <red> <green> <blue>|r"] = "|cffffff00Usage: /rgbtohex <red> <green> <blue>|r"
--[[Translation missing --]]
L["|cffffff00Usage: /rpt <times> <command>|r"] = "|cffffff00Usage: /rpt <times> <command>|r"
--[[Translation missing --]]
L["|cffffffffYou have %s.|r"] = "|cffffffffYou have %s.|r"
--[[Translation missing --]]
L["<ElvUI_CTC>"] = "<ElvUI_CTC>"
--[[Translation missing --]]
L["<no location>"] = "<no location>"
L["<notarget>"] = "<sin objetivo>"
--[[Translation missing --]]
L[ [=[A simple calculator used to perform basic operations on gold values.  Providing no parameters will show you how much gold you have.

You can include your current gold amount by using the |cff00ff00mymoney|r keyword.  For example |cff00ff00mymoney * 2|r.

|cffff0000Money amounts can only be added or subtracted, multiplication or division can only be performed with money and a number.  For example:  4g * 4 is okay, where 4g * 4g is invalid.]=] ] = [=[A simple calculator used to perform basic operations on gold values.  Providing no parameters will show you how much gold you have.

You can include your current gold amount by using the |cff00ff00mymoney|r keyword.  For example |cff00ff00mymoney * 2|r.

|cffff0000Money amounts can only be added or subtracted, multiplication or division can only be performed with money and a number.  For example:  4g * 4 is okay, where 4g * 4g is invalid.]=]
--[[Translation missing --]]
L[ [=[A simple command-line calculator.  Certain keywords, listed below, can be used and their in game value will be substituted.  You can also assign variables which are saved for later use.

|cffffff00Keywords:|r
]=] ] = [=[A simple command-line calculator.  Certain keywords, listed below, can be used and their in game value will be substituted.  You can also assign variables which are saved for later use.

|cffffff00Keywords:|r
]=]
--[[Translation missing --]]
L["A simple module to add the |cff00ff96/release|r command to release your spirit if your popup window disappears."] = "A simple module to add the |cff00ff96/release|r command to release your spirit if your popup window disappears."
--[[Translation missing --]]
L["A simple module to shorten the |cff00ff96/readycheck|r command to |cff00ff96/rc|r."] = "A simple module to shorten the |cff00ff96/readycheck|r command to |cff00ff96/rc|r."
--[[Translation missing --]]
L["A Test of Valor"] = "A Test of Valor"
--[[Translation missing --]]
L["Abbreviate your favourites to save typing. Format is short1:long1, short2:long2, ... shortN:longN."] = "Abbreviate your favourites to save typing. Format is short1:long1, short2:long2, ... shortN:longN."
--[[Translation missing --]]
L["Abbreviations"] = "Abbreviations"
L["achieve"] = "Logro"
--[[Translation missing --]]
L["Achievement Filter"] = "Achievement Filter"
--[[Translation missing --]]
L["Achievement for %s%s|r: %s"] = "Achievement for %s%s|r: %s"
L["Achievement Messages"] = "Mensaje de Logros"
--[[Translation missing --]]
L["Activate in 5-man instances."] = "Activate in 5-man instances."
--[[Translation missing --]]
L["Activate in guild."] = "Activate in guild."
--[[Translation missing --]]
L["Active in your selected community"] = "Active in your selected community"
L["Active Modules"] = "Modulos activos"
--[[Translation missing --]]
L["Add |cff00ff00/emotes|r Command"] = "Add |cff00ff00/emotes|r Command"
--[[Translation missing --]]
L["Add an |cff00ff00/emotes|r command to see what custom emotes you currently have running."] = "Add an |cff00ff00/emotes|r command to see what custom emotes you currently have running."
--[[Translation missing --]]
L[ [=[Add custom emotes.  Please remember that your character's name will always be the first word.

|cff00ff00%t|r is your current target.]=] ] = [=[Add custom emotes.  Please remember that your character's name will always be the first word.

|cff00ff00%t|r is your current target.]=]
--[[Translation missing --]]
L["Add custom names to the chat messages in this custom channel."] = "Add custom names to the chat messages in this custom channel."
--[[Translation missing --]]
L["Add custom names to the guild chat messages. (also include officer chat)."] = "Add custom names to the guild chat messages. (also include officer chat)."
--[[Translation missing --]]
L["Add custom names to the instance chat messages, e.g., LFR and battlegrounds."] = "Add custom names to the instance chat messages, e.g., LFR and battlegrounds."
--[[Translation missing --]]
L["Add custom names to the party chat messages."] = "Add custom names to the party chat messages."
--[[Translation missing --]]
L["Add custom names to the raid chat messages."] = "Add custom names to the raid chat messages."
--[[Translation missing --]]
L["Add Group Trigger"] = "Add Group Trigger"
--[[Translation missing --]]
L["Add Guild Trigger"] = "Add Guild Trigger"
--[[Translation missing --]]
L["Add item icons to loot received messages."] = "Add item icons to loot received messages."
L["Add Percentage"] = "A\195\177adir porcentaje"
--[[Translation missing --]]
L["Add space after channels"] = "Add space after channels"
--[[Translation missing --]]
L["Add surrounding brackets to own charname in messages."] = "Add surrounding brackets to own charname in messages."
--[[Translation missing --]]
L["Add the percentage of owned or unowned to total pets for a zone to the list, or you can choose to disable it."] = "Add the percentage of owned or unowned to total pets for a zone to the list, or you can choose to disable it."
--[[Translation missing --]]
L["Add the player's alts to the tooltip."] = "Add the player's alts to the tooltip."
--[[Translation missing --]]
L["Add the player's main to the tooltip."] = "Add the player's main to the tooltip."
--[[Translation missing --]]
L["Add word to your group invite trigger list"] = "Add word to your group invite trigger list"
--[[Translation missing --]]
L["Add word to your guild invite trigger list."] = "Add word to your guild invite trigger list."
--[[Translation missing --]]
L["Addon enabled, but no message or channels selected."] = "Addon enabled, but no message or channels selected."
--[[Translation missing --]]
L["Addon Messages"] = "Addon Messages"
--[[Translation missing --]]
L["Addon Version Sent, Version: |cffffff00%s|r"] = "Addon Version Sent, Version: |cffffff00%s|r"
--[[Translation missing --]]
L["Adds a |cff00ff00/fake|r command for generating fake achievements."] = "Adds a |cff00ff00/fake|r command for generating fake achievements."
--[[Translation missing --]]
L[ [=[Adds a gamemenu button.

|cffffff00To disable the button, simply disable this module.

Please do a full reload after disable or enable.|r]=] ] = [=[Adds a gamemenu button.

|cffffff00To disable the button, simply disable this module.

Please do a full reload after disable or enable.|r]=]
--[[Translation missing --]]
L[ [=[Adds a minimap button.

|cffffff00To disable the button, simply disable this module.|r]=] ] = [=[Adds a minimap button.

|cffffff00To disable the button, simply disable this module.|r]=]
L["Adds a timestamp to each line of text."] = "A\195\177adir Fecha y Hora a cada linea de texto"
--[[Translation missing --]]
L["Adds an ElvUI datatext for this addon."] = "Adds an ElvUI datatext for this addon."
--[[Translation missing --]]
L["Adds chat commands |cff1784d1/chatframes|r and |cff1784d1/cf|r to help you identify the chat frames and their numbers."] = "Adds chat commands |cff1784d1/chatframes|r and |cff1784d1/cf|r to help you identify the chat frames and their numbers."
L[ [=[Adds chat commands to clear the chat windows.

]=] ] = "A\195\177adir comandos al chat para limpiar la ventana del chat"
--[[Translation missing --]]
L[ [=[Adds chat commands to show the current server token price in the chat windows.

]=] ] = [=[Adds chat commands to show the current server token price in the chat windows.

]=]
--[[Translation missing --]]
L[ [=[Adds item links to Auction House messages.  Enabling this module will automatically disable the Auction Message Filter module.

|cffff0000If you do not have the item in your bags at the time of the system message firing then this will not be able to get the item link.  This is a limitation of the|r |cffffff00GetItemInfo()|r |cffff0000API function.  If this occurs, then the module will simple pass through the default message.|r]=] ] = [=[Adds item links to Auction House messages.  Enabling this module will automatically disable the Auction Message Filter module.

|cffff0000If you do not have the item in your bags at the time of the system message firing then this will not be able to get the item link.  This is a limitation of the|r |cffffff00GetItemInfo()|r |cffff0000API function.  If this occurs, then the module will simple pass through the default message.|r]=]
--[[Translation missing --]]
L["Adds itemlevel to linked items in chat messages."] = "Adds itemlevel to linked items in chat messages."
--[[Translation missing --]]
L["Adds tell target slash command, |cff00ff00/tt|r."] = "Adds tell target slash command, |cff00ff00/tt|r."
--[[Translation missing --]]
L[ [=[Adds the |cff00ff96/find|r and |cff00ff96/findall|r commands to search the chat history.

Usage:
    |cff00ff96/find <text>|r
    |cff00ff96/findall <text>|r]=] ] = [=[Adds the |cff00ff96/find|r and |cff00ff96/findall|r commands to search the chat history.

Usage:
    |cff00ff96/find <text>|r
    |cff00ff96/findall <text>|r]=]
--[[Translation missing --]]
L["Adds the |cff00ff96/role|r command for initiating a role poll in raids."] = "Adds the |cff00ff96/role|r command for initiating a role poll in raids."
--[[Translation missing --]]
L["Adds the chat commands |cff00ff96/zonelist|r, |cff00ff96/pets|r and |cff00ff96/mounts|r to provide information about your mounts and pets."] = "Adds the chat commands |cff00ff96/zonelist|r, |cff00ff96/pets|r and |cff00ff96/mounts|r to provide information about your mounts and pets."
L["AFK"] = "Ausente"
--[[Translation missing --]]
L["AFK Messages"] = "AFK Messages"
--[[Translation missing --]]
L["AFK/DND Filter"] = "AFK/DND Filter"
L["After"] = "Despues"
--[[Translation missing --]]
L["against"] = "against"
L["Alchemy"] = "Alquimia"
L["All"] = "Todo"
L["All Modules"] = "Todos los modulos"
--[[Translation missing --]]
L["AllCommunity"] = "AllCommunity"
--[[Translation missing --]]
L["Allow guild synchronization"] = "Allow guild synchronization"
--[[Translation missing --]]
L["Allow someone to request a link of all your professions."] = "Allow someone to request a link of all your professions."
L[ [=[Allows you to change the default font settings for the chat frames.

|cffff0000Using another addon to do this will break this functionality.|r]=] ] = "Te permite cambiar la fuente por defecto en los ajustes del chat"
--[[Translation missing --]]
L["Allows you to check the status of the A Test of Valor quest given by Wrathion for the legendary gems by using the |cff00ff96/tov|r chat command."] = "Allows you to check the status of the A Test of Valor quest given by Wrathion for the legendary gems by using the |cff00ff96/tov|r chat command."
--[[Translation missing --]]
L[ [=[Allows you to color the pet battle info messages, and determine which chat frame to send them to.

I am aware that some of the features of this module don't really pertain to the chat, but I couldn't really justify an entirely new addon.  So I just snuck them into here.]=] ] = [=[Allows you to color the pet battle info messages, and determine which chat frame to send them to.

I am aware that some of the features of this module don't really pertain to the chat, but I couldn't really justify an entirely new addon.  So I just snuck them into here.]=]
--[[Translation missing --]]
L["Allows you to reroute auction house messages to a different chat frame."] = "Allows you to reroute auction house messages to a different chat frame."
--[[Translation missing --]]
L[ [=[Allows you to use some fun filters on various chat channels.

|cffff0000This will break any links in the chat message.|r

|cffffff00Filters:|r
13375p34|<, ALL UPPERCASE, all lowercase, Capitalize Words, AlTeRnAtInG CaPs, BeTTeR ALTeRNaTiNG CaPS, sretteL esreveR, Gr??v?? L??tt??rs, ??c??t?? L??tt??rs, ??????r??s??s L??tt??rs, C??rc??mfl??x L??tt??rs]=] ] = [=[Allows you to use some fun filters on various chat channels.

|cffff0000This will break any links in the chat message.|r

|cffffff00Filters:|r
13375p34|<, ALL UPPERCASE, all lowercase, Capitalize Words, AlTeRnAtInG CaPs, BeTTeR ALTeRNaTiNG CaPS, sretteL esreveR, Gr\195\160v\195\168 L\195\168tt\195\168rs, \195\129c\195\186t\195\169 L\195\169tt\195\169rs, \195\144\195\175\195\164r\195\171s\195\175s L\195\171tt\195\171rs, C\195\174rc\195\187mfl\195\170x L\195\170tt\195\170rs]=]
--[[Translation missing --]]
L["Alt + Left Click"] = "Alt + Left Click"
--[[Translation missing --]]
L["Alt + Right Click"] = "Alt + Right Click"
--[[Translation missing --]]
L["Alt Names"] = "Alt Names"
--[[Translation missing --]]
L["Alt note fallback"] = "Alt note fallback"
--[[Translation missing --]]
L["alt2"] = "alt2"
--[[Translation missing --]]
L["alt3"] = "alt3"
--[[Translation missing --]]
L["Alt-click name to invite"] = "Alt-click name to invite"
L["Alternate command to kick someone from guild."] = "Codico alternativo para expulsar a alguien de la hermandad"
--[[Translation missing --]]
L["AlTeRnAtInG CaPs"] = "AlTeRnAtInG CaPs"
--[[Translation missing --]]
L["Always"] = "Always"
--[[Translation missing --]]
L["Always set your DND status while announcing to channels"] = "Always set your DND status while announcing to channels"
--[[Translation missing --]]
L["and"] = "and"
--[[Translation missing --]]
L["Announce in chat who taunted."] = "Announce in chat who taunted."
--[[Translation missing --]]
L["Announce interval, minutes"] = "Announce interval, minutes"
--[[Translation missing --]]
L["Announce settings"] = "Announce settings"
--[[Translation missing --]]
L["Announce to General"] = "Announce to General"
--[[Translation missing --]]
L["Announce to LFG"] = "Announce to LFG"
--[[Translation missing --]]
L["Announce to Trade"] = "Announce to Trade"
--[[Translation missing --]]
L["Announce your message to city trade channel."] = "Announce your message to city trade channel."
--[[Translation missing --]]
L["Announce your message to General channel when out of a city."] = "Announce your message to General channel when out of a city."
--[[Translation missing --]]
L["Announce your message to LFG channel."] = "Announce your message to LFG channel."
--[[Translation missing --]]
L["Announcements"] = "Announcements"
--[[Translation missing --]]
L["Announcing to General channel. Trade: %d LFG: %d"] = "Announcing to General channel. Trade: %d LFG: %d"
--[[Translation missing --]]
L["Announcing to LFG channel. Trade: %d LFG: %d"] = "Announcing to LFG channel. Trade: %d LFG: %d"
--[[Translation missing --]]
L["Announcing to Trade channel. Trade: %d LFG: %d"] = "Announcing to Trade channel. Trade: %d LFG: %d"
--[[Translation missing --]]
L["Anounce AOE Taunts"] = "Anounce AOE Taunts"
--[[Translation missing --]]
L["Anounce AOE Taunts Output:"] = "Anounce AOE Taunts Output:"
--[[Translation missing --]]
L["Anounce AOE Taunts."] = "Anounce AOE Taunts."
--[[Translation missing --]]
L["Anounce Fails"] = "Anounce Fails"
--[[Translation missing --]]
L["Anounce Fails Output:"] = "Anounce Fails Output:"
--[[Translation missing --]]
L["Anounce Taunts"] = "Anounce Taunts"
--[[Translation missing --]]
L["Anounce Taunts Output:"] = "Anounce Taunts Output:"
--[[Translation missing --]]
L["Anounce taunts that fail."] = "Anounce taunts that fail."
--[[Translation missing --]]
L["Anounce taunts."] = "Anounce taunts."
--[[Translation missing --]]
L["AOE"] = "AOE"
--[[Translation missing --]]
L["ap"] = "ap"
--[[Translation missing --]]
L["Are you sure you want to delete all your saved class/level data?"] = "Are you sure you want to delete all your saved class/level data?"
L["Are you sure you want to disable all of the modules?"] = "estas seguro que quieres desactivar todos los modulos"
L["Are you sure you want to enable all of the modules?"] = "estas seguro que quieres activar todos los modulos"
L["Are you sure you want to reset the chat fonts to defaults?"] = "Estas seguro que quieres reestablecer las letras por defecto del chat"
--[[Translation missing --]]
L["As I see it, yes."] = "As I see it, yes."
--[[Translation missing --]]
L["Ask again later."] = "Ask again later."
--[[Translation missing --]]
L["Auction Created"] = "Auction Created"
--[[Translation missing --]]
L["Auction Expired"] = "Auction Expired"
--[[Translation missing --]]
L["Auction Message Filtering"] = "Auction Message Filtering"
--[[Translation missing --]]
L["Auction Message Types"] = "Auction Message Types"
--[[Translation missing --]]
L["Auction Outbid"] = "Auction Outbid"
--[[Translation missing --]]
L["Auction Removed"] = "Auction Removed"
--[[Translation missing --]]
L["Auction Sold"] = "Auction Sold"
--[[Translation missing --]]
L["Auction Won"] = "Auction Won"
L["Auto Congratulate"] = "Felicitaciones automaticas"
--[[Translation missing --]]
L["Auto Ding"] = "Auto Ding"
--[[Translation missing --]]
L["Auto Farewell"] = "Auto Farewell"
--[[Translation missing --]]
L["Auto Profession Link"] = "Auto Profession Link"
L["Auto Set Role"] = "Escoger funcion automaticamente"
L["Auto Welcome"] = "Bienvenida automatica"
L["Automatic Chat Logging"] = "Logeo automatico en el chat"
--[[Translation missing --]]
L["Automatically bid someone farewell when they leave your guild."] = "Automatically bid someone farewell when they leave your guild."
--[[Translation missing --]]
L["Automatically congratulate someone when they, or others, complete an achievement."] = "Automatically congratulate someone when they, or others, complete an achievement."
--[[Translation missing --]]
L["Automatically congratulates someone when they say \"ding\" in chat."] = "Automatically congratulates someone when they say \"ding\" in chat."
--[[Translation missing --]]
L["Automatically enable tracking of pets for battles."] = "Automatically enable tracking of pets for battles."
--[[Translation missing --]]
L["Automatically enable tracking of Stable Masters to help you revive and/or heal your pets."] = "Automatically enable tracking of Stable Masters to help you revive and/or heal your pets."
--[[Translation missing --]]
L["Automatically enables chat logging."] = "Automatically enables chat logging."
--[[Translation missing --]]
L["Automatically link someone the profession they requested via various keywords."] = "Automatically link someone the profession they requested via various keywords."
--[[Translation missing --]]
L["Automatically Remove Item When Finished"] = "Automatically Remove Item When Finished"
--[[Translation missing --]]
L["Automatically welcomes someone to your guild."] = "Automatically welcomes someone to your guild."
--[[Translation missing --]]
L["Available Chat Command Arguments"] = "Available Chat Command Arguments"
--[[Translation missing --]]
L["Available communities"] = "Available communities"
--[[Translation missing --]]
L["Available parameters are |cff1784d1version|r, |cff1784d1build|r, |cff1784d1date|r, |cff1784d1interface|r, |cff1784d1locale|r."] = "Available parameters are |cff1784d1version|r, |cff1784d1build|r, |cff1784d1date|r, |cff1784d1interface|r, |cff1784d1locale|r."
--[[Translation missing --]]
L["Battle.Net Convo"] = "Battle.Net Convo"
--[[Translation missing --]]
L["Battle.Net Options"] = "Battle.Net Options"
--[[Translation missing --]]
L["Battle.Net Whisper"] = "Battle.Net Whisper"
--[[Translation missing --]]
L["Before"] = "Before"
--[[Translation missing --]]
L["Below are the keywords that the module will look for to substitute with the values described below."] = "Below are the keywords that the module will look for to substitute with the values described below."
--[[Translation missing --]]
L["BeTTeR ALTeRNaTiNG CaPS"] = "BeTTeR ALTeRNaTiNG CaPS"
--[[Translation missing --]]
L["Better not tell you now."] = "Better not tell you now."
--[[Translation missing --]]
L["Bid Accepted"] = "Bid Accepted"
L["Blacksmithing"] = "Herreria"
--[[Translation missing --]]
L["Bloodlust Announce"] = "Bloodlust Announce"
--[[Translation missing --]]
L["Bloodlust Announce is disabled, locate it under |cfff960d9KlixUI|r settings instead."] = "Bloodlust Announce is disabled, locate it under |cfff960d9KlixUI|r settings instead."
--[[Translation missing --]]
L["Build Date: |cff1784d1%s|r"] = "Build Date: |cff1784d1%s|r"
--[[Translation missing --]]
L["Build: |cff1784d1%s|r"] = "Build: |cff1784d1%s|r"
L["Busy"] = "Ocupado"
--[[Translation missing --]]
L["Calculator"] = "Calculator"
--[[Translation missing --]]
L["Cannot predict now."] = "Cannot predict now."
--[[Translation missing --]]
L["Can't set value '%s', doesn't look like a number."] = "Can't set value '%s', doesn't look like a number."
--[[Translation missing --]]
L["Capitalize Words"] = "Capitalize Words"
--[[Translation missing --]]
L["Capture Delay"] = "Capture Delay"
L["Center"] = "Centro"
--[[Translation missing --]]
L["Changed Channel"] = "Changed Channel"
L["Channel"] = "Canal"
--[[Translation missing --]]
L["Channel %d"] = "Channel %d"
L["Channel Colors"] = "Colores de Canal"
--[[Translation missing --]]
L["Channel Names"] = "Channel Names"
--[[Translation missing --]]
L["Channel Notice Filter"] = "Channel Notice Filter"
L["Channel Sounds"] = "Sonidos de Canal"
--[[Translation missing --]]
L["Channel to send the reminder to."] = "Channel to send the reminder to."
--[[Translation missing --]]
L["Channels"] = "Channels"
--[[Translation missing --]]
L["Channels to Filter"] = "Channels to Filter"
--[[Translation missing --]]
L["Channels to look for questions."] = "Channels to look for questions."
--[[Translation missing --]]
L["Channels to Monitor"] = "Channels to Monitor"
--[[Translation missing --]]
L["Channels to Watch"] = "Channels to Watch"
--[[Translation missing --]]
L["Character to use between the name and level"] = "Character to use between the name and level"
--[[Translation missing --]]
L["Character to use for the left bracket"] = "Character to use for the left bracket"
--[[Translation missing --]]
L["Character to use for the right bracket"] = "Character to use for the right bracket"
--[[Translation missing --]]
L["Chat Events"] = "Chat Events"
L["Chat Fonts"] = "Fuentes de Canal"
L["Chat Frame "] = "Marco de Canal"
--[[Translation missing --]]
L["Chat Frame"] = "Chat Frame"
--[[Translation missing --]]
L["Chat Frame %d"] = "Chat Frame %d"
--[[Translation missing --]]
L["Chat Frame Settings"] = "Chat Frame Settings"
--[[Translation missing --]]
L["Chat frame to output the message to.  Default is |cffffff00ChatFrame3|r, which is the default frame for ElvUI XP messages."] = "Chat frame to output the message to.  Default is |cffffff00ChatFrame3|r, which is the default frame for ElvUI XP messages."
--[[Translation missing --]]
L["Chat frame to output the messages.  Default is ChatFrame3, which is the default output frame for reputation messages in ElvUI."] = "Chat frame to output the messages.  Default is ChatFrame3, which is the default output frame for reputation messages in ElvUI."
--[[Translation missing --]]
L["Chat frame to route the auction house messages to."] = "Chat frame to route the auction house messages to."
--[[Translation missing --]]
L["Chat frame to route the messages to."] = "Chat frame to route the messages to."
--[[Translation missing --]]
L["Chat frame to send the list to."] = "Chat frame to send the list to."
--[[Translation missing --]]
L["Chat frame to send the messages to."] = "Chat frame to send the messages to."
--[[Translation missing --]]
L["Chat Frames To Watch"] = "Chat Frames To Watch"
--[[Translation missing --]]
L["Chat Tabs"] = "Chat Tabs"
--[[Translation missing --]]
L["Chat Tweaks"] = "Chat Tweaks"
--[[Translation missing --]]
L["Chat Window"] = "Chat Window"
--[[Translation missing --]]
L["ChatFrame %d"] = "ChatFrame %d"
--[[Translation missing --]]
L["Chats To Monitor"] = "Chats To Monitor"
--[[Translation missing --]]
L["Cheats Color"] = "Cheats Color"
--[[Translation missing --]]
L["Choose the filter to use."] = "Choose the filter to use."
--[[Translation missing --]]
L["Choose which chat frames display timestamps"] = "Choose which chat frames display timestamps"
L["Class"] = "Clase"
--[[Translation missing --]]
L["Clear all chat windows."] = "Clear all chat windows."
--[[Translation missing --]]
L["Clear Chat Commands"] = "Clear Chat Commands"
L["Clear current chat."] = "Limpiar chat actual"
--[[Translation missing --]]
L["Click to open the ElvUI Chat Tweaks config window.  This will also close ElvUI's config window."] = "Click to open the ElvUI Chat Tweaks config window.  This will also close ElvUI's config window."
--[[Translation missing --]]
L["Click to reset the materials you're tracking."] = "Click to reset the materials you're tracking."
--[[Translation missing --]]
L["Click to send the reminder to the select channel that the Magic 8-Ball is listening."] = "Click to send the reminder to the select channel that the Magic 8-Ball is listening."
--[[Translation missing --]]
L["Click to toggle ElvUI's config window.  This will also close this window."] = "Click to toggle ElvUI's config window.  This will also close this window."
--[[Translation missing --]]
L["Client Locale: |cff1784d1%s|r"] = "Client Locale: |cff1784d1%s|r"
--[[Translation missing --]]
L["Coin Size"] = "Coin Size"
--[[Translation missing --]]
L["Color"] = "Color"
--[[Translation missing --]]
L["Color a roll game loss, aka when you roll a one (1)."] = "Color a roll game loss, aka when you roll a one (1)."
--[[Translation missing --]]
L["Color a roll game win, aka when someone else rolls a one (1)."] = "Color a roll game win, aka when someone else rolls a one (1)."
--[[Translation missing --]]
L["Color by Channel"] = "Color by Channel"
--[[Translation missing --]]
L["Color Cheats"] = "Color Cheats"
L["Color Level"] = "Color de nivel"
--[[Translation missing --]]
L["Color Loss"] = "Color Loss"
--[[Translation missing --]]
L["Color Name"] = "Color Name"
--[[Translation missing --]]
L["Color of other's rolls."] = "Color of other's rolls."
--[[Translation missing --]]
L["Color of the base reputation messages."] = "Color of the base reputation messages."
L["Color of the faction."] = "Color de la faccion"
--[[Translation missing --]]
L["Color of the output message."] = "Color of the output message."
L["Color of the reputation needed/left."] = "Color de la reputacion restante / necesaria"
--[[Translation missing --]]
L["Color of the standing (honored, revered, etc.)."] = "Color of the standing (honored, revered, etc.)."
--[[Translation missing --]]
L["Color own charname in messages."] = "Color own charname in messages."
--[[Translation missing --]]
L["Color Player Names By..."] = "Color Player Names By..."
--[[Translation missing --]]
L["Color regular rolls by others."] = "Color regular rolls by others."
--[[Translation missing --]]
L["Color Rolls"] = "Color Rolls"
--[[Translation missing --]]
L["Color rolls differently to make tracking the roll game easier on the eyes."] = "Color rolls differently to make tracking the roll game easier on the eyes."
--[[Translation missing --]]
L["Color rolls that do not start at 1."] = "Color rolls that do not start at 1."
--[[Translation missing --]]
L["Color self in messages"] = "Color self in messages"
--[[Translation missing --]]
L["Color the messages by the channel the message came from."] = "Color the messages by the channel the message came from."
--[[Translation missing --]]
L["Color the name of the pets during a pet battle relative to their rarity.  If you have the pet you're currently battling it will also add the quality of the pet you have in your journal."] = "Color the name of the pets during a pet battle relative to their rarity.  If you have the pet you're currently battling it will also add the quality of the pet you have in your journal."
--[[Translation missing --]]
L["Color timestamps the same as the channel they appear in."] = "Color timestamps the same as the channel they appear in."
--[[Translation missing --]]
L[ [=[Color to change the filtered message to.

|cffff0000Only works when Filtering Mode is set to |cff00ff00Colorize|r.]=] ] = [=[Color to change the filtered message to.

|cffff0000Only works when Filtering Mode is set to |cff00ff00Colorize|r.]=]
--[[Translation missing --]]
L["Color to designate a cheating roll."] = "Color to designate a cheating roll."
--[[Translation missing --]]
L["Color to designate a roll game loss."] = "Color to designate a roll game loss."
--[[Translation missing --]]
L["Color to designate a roll game win."] = "Color to designate a roll game win."
--[[Translation missing --]]
L["Color to use for your rolls."] = "Color to use for your rolls."
--[[Translation missing --]]
L["Color Win"] = "Color Win"
--[[Translation missing --]]
L["Color Your Rolls"] = "Color Your Rolls"
--[[Translation missing --]]
L["Color your rolls to set them apart."] = "Color your rolls to set them apart."
--[[Translation missing --]]
L["Colorize"] = "Colorize"
--[[Translation missing --]]
L["Combat Log Remover"] = "Combat Log Remover"
--[[Translation missing --]]
L["Command Help"] = "Command Help"
L["Companions"] = "Mascotas"
--[[Translation missing --]]
L["Complete"] = "Complete"
--[[Translation missing --]]
L["Compress"] = "Compress"
--[[Translation missing --]]
L["Concentrate and ask again."] = "Concentrate and ask again."
--[[Translation missing --]]
L["Congratulate achievements earned by guildmates."] = "Congratulate achievements earned by guildmates."
--[[Translation missing --]]
L["Congratulate achievements earned by people in your party."] = "Congratulate achievements earned by people in your party."
--[[Translation missing --]]
L["Congratulate achievements earned by people in your raid."] = "Congratulate achievements earned by people in your raid."
--[[Translation missing --]]
L["Congratulate achievements earned by people near you."] = "Congratulate achievements earned by people near you."
--[[Translation missing --]]
L["Congratulations Messages"] = "Congratulations Messages"
L["conquest"] = "Conquista"
--[[Translation missing --]]
L["Control + Left Click"] = "Control + Left Click"
--[[Translation missing --]]
L["Control + Right Click"] = "Control + Right Click"
--[[Translation missing --]]
L["Control when Talented should silence Learned/Unlearned system messages"] = "Control when Talented should silence Learned/Unlearned system messages"
L["Cooking"] = "Cocina"
--[[Translation missing --]]
L["copper"] = "copper"
L["Copy Links"] = "Copiar enlaces"
--[[Translation missing --]]
L["cp"] = "cp"
--[[Translation missing --]]
L["cpcap"] = "cpcap"
--[[Translation missing --]]
L["Creates a button to click that will return you to the bottom of the chat frame."] = "Creates a button to click that will return you to the bottom of the chat frame."
--[[Translation missing --]]
L["Custom Chat Filters"] = "Custom Chat Filters"
--[[Translation missing --]]
L["Custom chat filters."] = "Custom chat filters."
L["Custom color"] = "Color personalizado"
--[[Translation missing --]]
L["Custom Emote: |cffffff00%s|r"] = "Custom Emote: |cffffff00%s|r"
--[[Translation missing --]]
L["Custom Emotes"] = "Custom Emotes"
L["Custom format (advanced)"] = "Formato Personalizado (Avanzado)"
--[[Translation missing --]]
L["Custom Named Chat Filters"] = "Custom Named Chat Filters"
--[[Translation missing --]]
L["Custom Names"] = "Custom Names"
L["Damage Meters"] = "Medidor de  Da\195\177o"
L["Datatext"] = "Texto de Datos"
L["Datatext Display"] = "Mostrar texto de datos"
L["Date"] = "Fecha"
L["Day"] = "Dia"
L["Death Knight"] = "Caballero de la Muerte"
L["DEATHKNIGHT"] = "CABALLLERO DE LA MUERTE"
--[[Translation missing --]]
L["Default font face for the chat frames."] = "Default font face for the chat frames."
--[[Translation missing --]]
L["Default font outline for the chat frames."] = "Default font outline for the chat frames."
--[[Translation missing --]]
L["Default font size for the chat frames."] = "Default font size for the chat frames."
L["Default Name Color"] = "Color de nombre por defecto"
--[[Translation missing --]]
L["Destroys all your saved class/level data"] = "Destroys all your saved class/level data"
--[[Translation missing --]]
L["Developer Tools"] = "Developer Tools"
--[[Translation missing --]]
L["Ding Messages"] = "Ding Messages"
L["Disable All Modules"] = "Desactivar todos los modulos"
--[[Translation missing --]]
L["Disable if you completed the achievement."] = "Disable if you completed the achievement."
--[[Translation missing --]]
L["Disable if you say ding."] = "Disable if you say ding."
L["Disable if..."] = "Desactivar Si"
--[[Translation missing --]]
L["Disable in Battlegrounds"] = "Disable in Battlegrounds"
--[[Translation missing --]]
L["Disable in PvP Zones"] = "Disable in PvP Zones"
--[[Translation missing --]]
L["Disable while you're AFK flagged."] = "Disable while you're AFK flagged."
--[[Translation missing --]]
L["Disable while you're DND flagged."] = "Disable while you're DND flagged."
L["Disabled"] = "Desactivar"
--[[Translation missing --]]
L["Disabled %s%s|r module."] = "Disabled %s%s|r module."
L["Disabled Modules"] = "Desactivar modulos"
--[[Translation missing --]]
L["Disables while you are in a battleground."] = "Disables while you are in a battleground."
--[[Translation missing --]]
L["Disables while you are in PvP Zones such as Ashran."] = "Disables while you are in PvP Zones such as Ashran."
--[[Translation missing --]]
L["Display a tooltip by hovering over a link in chat."] = "Display a tooltip by hovering over a link in chat."
--[[Translation missing --]]
L["Display Ability"] = "Display Ability"
--[[Translation missing --]]
L["Display armor/weapon type (Plate, Leather, ...)"] = "Display armor/weapon type (Plate, Leather, ...)"
--[[Translation missing --]]
L["Display equip location (Head, Trinket, ...)"] = "Display equip location (Head, Trinket, ...)"
--[[Translation missing --]]
L["Display item level"] = "Display item level"
--[[Translation missing --]]
L["Display itemlevellinks when someone links an item in chat."] = "Display itemlevellinks when someone links an item in chat."
--[[Translation missing --]]
L["Display itemlevellinks when someone loots an item."] = "Display itemlevellinks when someone loots an item."
--[[Translation missing --]]
L["Display Keystone Conqueror achievement progress."] = "Display Keystone Conqueror achievement progress."
--[[Translation missing --]]
L["Display Keystone Master achievement progress."] = "Display Keystone Master achievement progress."
--[[Translation missing --]]
L["Display the ability that was used to taunt."] = "Display the ability that was used to taunt."
--[[Translation missing --]]
L["Displays reputation numbers and progress in the chat frame."] = "Displays reputation numbers and progress in the chat frame."
--[[Translation missing --]]
L["DND Messages"] = "DND Messages"
--[[Translation missing --]]
L["Do not reply while in M+ dungeons."] = "Do not reply while in M+ dungeons."
--[[Translation missing --]]
L["Do not use alphanumerical characters."] = "Do not use alphanumerical characters."
--[[Translation missing --]]
L["Do Nothing"] = "Do Nothing"
--[[Translation missing --]]
L["Do you want to automatically remove an item when you meet your quota?"] = "Do you want to automatically remove an item when you meet your quota?"
--[[Translation missing --]]
L["Doesn't allow multiple announces from your guild members at the same time."] = "Doesn't allow multiple announces from your guild members at the same time."
--[[Translation missing --]]
L["Doesn't send anything to channels, simulating only."] = "Doesn't send anything to channels, simulating only."
--[[Translation missing --]]
L["Dont Always Run"] = "Dont Always Run"
--[[Translation missing --]]
L["Don't count on it."] = "Don't count on it."
--[[Translation missing --]]
L["Don't show your own failed taunts."] = "Don't show your own failed taunts."
--[[Translation missing --]]
L["Don't show your own taunts."] = "Don't show your own taunts."
L["DRUID"] = "DRUIDA"
L["Druid"] = "Druida"
--[[Translation missing --]]
L["Dungeon Guide"] = "Dungeon Guide"
--[[Translation missing --]]
L["Easy Channel"] = "Easy Channel"
--[[Translation missing --]]
L["EditBox Alt Key Arrows"] = "EditBox Alt Key Arrows"
--[[Translation missing --]]
L["ElvUI ChatTweaks"] = "ElvUI ChatTweaks"
--[[Translation missing --]]
L["ElvUI_ChatTweaks"] = "ElvUI_ChatTweaks"
--[[Translation missing --]]
L["ElvUI_CT"] = "ElvUI_CT"
--[[Translation missing --]]
L["Emote"] = "Emote"
--[[Translation missing --]]
L["Emote Filter"] = "Emote Filter"
--[[Translation missing --]]
L["Emphasize Self"] = "Emphasize Self"
L["Enable "] = "Activar"
--[[Translation missing --]]
L["Enable"] = "Enable"
L["Enable All Modules"] = "Activar todos los modulos"
--[[Translation missing --]]
L["Enable Debugging"] = "Enable Debugging"
--[[Translation missing --]]
L["Enable this to give the module a percent chance to run to prevent spam/annoyances.  If disabled the module will always congratulate."] = "Enable this to give the module a percent chance to run to prevent spam/annoyances.  If disabled the module will always congratulate."
--[[Translation missing --]]
L["Enable this to give the module a percent chance to run to prevent spam/annoyances.  If disabled the module will always run."] = "Enable this to give the module a percent chance to run to prevent spam/annoyances.  If disabled the module will always run."
--[[Translation missing --]]
L["Enable this to give the module a percent chance to run to prevent spam/annoyances.  If disabled the module will always welcome."] = "Enable this to give the module a percent chance to run to prevent spam/annoyances.  If disabled the module will always welcome."
--[[Translation missing --]]
L["Enable to filter custom emotes made using |cff00ff00/emote|r or |cff00ff00/e|r."] = "Enable to filter custom emotes made using |cff00ff00/emote|r or |cff00ff00/e|r."
--[[Translation missing --]]
L["Enable to filter standard emotes such as |cff00ff00/dance|r or |cff00ff00/flirt|r."] = "Enable to filter standard emotes such as |cff00ff00/dance|r or |cff00ff00/flirt|r."
--[[Translation missing --]]
L["Enable various debugging messages to help with errors or undesired functioning."] = "Enable various debugging messages to help with errors or undesired functioning."
L["Enabled"] = "Activar"
--[[Translation missing --]]
L["Enabled %s%s|r module."] = "Enabled %s%s|r module."
L["Enabled Modules"] = "Activar Modulos"
--[[Translation missing --]]
L["Enables the whoing of friends."] = "Enables the whoing of friends."
--[[Translation missing --]]
L["Enables the whoing of Guildmates."] = "Enables the whoing of Guildmates."
--[[Translation missing --]]
L[ [=[Enables you to replace channel names with your own names. You can use '%s' to force an empty string.

|cffffff00Please disable ElvUI Short Channel option for this to work, you'll find the option under /ec - Chat - General - Short Channels.]=] ] = [=[Enables you to replace channel names with your own names. You can use '%s' to force an empty string.

|cffffff00Please disable ElvUI Short Channel option for this to work, you'll find the option under /ec - Chat - General - Short Channels.]=]
--[[Translation missing --]]
L["Enables you to right-click a person's name in chat and set a note on them to be displayed in chat, such as their main character's name.  Can also scan guild notes for character names to display, if no note has been manually set."] = "Enables you to right-click a person's name in chat and set a note on them to be displayed in chat, such as their main character's name.  Can also scan guild notes for character names to display, if no note has been manually set."
--[[Translation missing --]]
L["Enabling this will send a message to your chat whenever you change a zone with a list of the Battle Pets that are obtainable in the zone.  You have the option to filter them based on whether or not you own them.  This will also add the chat command |cff00ff96/zonelist|r to send the list whenever.  Even if you disable this the chat commands will still work."] = "Enabling this will send a message to your chat whenever you change a zone with a list of the Battle Pets that are obtainable in the zone.  You have the option to filter them based on whether or not you own them.  This will also add the chat command |cff00ff96/zonelist|r to send the list whenever.  Even if you disable this the chat commands will still work."
L["Enchanting"] = "Encantamiento"
L["Engineering"] = "Ingenieria"
--[[Translation missing --]]
L["Enter a custom time format. See http://www.lua.org/pil/22.1.html for a list of valid formatting symbols."] = "Enter a custom time format. See http://www.lua.org/pil/22.1.html for a list of valid formatting symbols."
--[[Translation missing --]]
L["Enter a value in seconds."] = "Enter a value in seconds."
--[[Translation missing --]]
L["Equip Location"] = "Equip Location"
--[[Translation missing --]]
L["etc"] = "etc"
--[[Translation missing --]]
L["Exclude level display for max level characters"] = "Exclude level display for max level characters"
--[[Translation missing --]]
L["Exclude max levels"] = "Exclude max levels"
--[[Translation missing --]]
L["Execution Interval"] = "Execution Interval"
L["Faction Color"] = "Color de Faccion"
--[[Translation missing --]]
L["Failed:"] = "Failed:"
L["Fake Achievement"] = "Falso logro"
L["Female"] = "Mujer"
--[[Translation missing --]]
L["Filter achievement message spam!"] = "Filter achievement message spam!"
--[[Translation missing --]]
L["Filter achievements earned by guildmates."] = "Filter achievements earned by guildmates."
--[[Translation missing --]]
L["Filter achievements earned by nearby people."] = "Filter achievements earned by nearby people."
--[[Translation missing --]]
L["Filter AFK messages."] = "Filter AFK messages."
--[[Translation missing --]]
L["Filter AFK/DND auto responses.  This module is compatible with WIM."] = "Filter AFK/DND auto responses.  This module is compatible with WIM."
--[[Translation missing --]]
L["Filter by Player Level"] = "Filter by Player Level"
--[[Translation missing --]]
L["Filter changed channel message."] = "Filter changed channel message."
--[[Translation missing --]]
L["Filter Color"] = "Filter Color"
--[[Translation missing --]]
L["Filter DND messages."] = "Filter DND messages."
--[[Translation missing --]]
L["Filter Guild Achievements"] = "Filter Guild Achievements"
--[[Translation missing --]]
L["Filter joined channel message."] = "Filter joined channel message."
--[[Translation missing --]]
L["Filter left channel message."] = "Filter left channel message."
--[[Translation missing --]]
L["Filter Line"] = "Filter Line"
--[[Translation missing --]]
L["Filter Mode"] = "Filter Mode"
--[[Translation missing --]]
L["Filter Nearby Achievements"] = "Filter Nearby Achievements"
L["Filter Pets"] = "Filtrar mascotas"
--[[Translation missing --]]
L["Filter spam throttle notices."] = "Filter spam throttle notices."
--[[Translation missing --]]
L["Filter standard and/or custom emotes."] = "Filter standard and/or custom emotes."
--[[Translation missing --]]
L[ [=[Filter the Auction Created message.

|cffffff00%s|r]=] ] = [=[Filter the Auction Created message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Filter the Auction Expired message.

|cffffff00%s|r]=] ] = [=[Filter the Auction Expired message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Filter the Auction Outbid message.

|cffffff00%s|r]=] ] = [=[Filter the Auction Outbid message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Filter the Auction Removed message.

|cffffff00%s|r]=] ] = [=[Filter the Auction Removed message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Filter the Auction Sold message.

|cffffff00%s|r]=] ] = [=[Filter the Auction Sold message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Filter the Auction Won message.

|cffffff00%s|r]=] ] = [=[Filter the Auction Won message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Filter the Bid Accepted message.

|cffffff00%s|r]=] ] = [=[Filter the Bid Accepted message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L["Filter the line containing the question."] = "Filter the line containing the question."
--[[Translation missing --]]
L[ [=[Filter what item quality should be displayed in chat.
|cfff960d9Quality steps: 0 = Poor, 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Epic, 5 = Legendary & 6 = Artifact|r]=] ] = [=[Filter what item quality should be displayed in chat.
|cfff960d9Quality steps: 0 = Poor, 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Epic, 5 = Legendary & 6 = Artifact|r]=]
--[[Translation missing --]]
L["Filtering Mode"] = "Filtering Mode"
L["Filters"] = "Filtros"
--[[Translation missing --]]
L["Filters out Auction House system messages."] = "Filters out Auction House system messages."
--[[Translation missing --]]
L["Filters the channel notices."] = "Filters the channel notices."
L["Font Color"] = "Color de letra"
--[[Translation missing --]]
L["Font Face"] = "Font Face"
L["Font Size"] = "Tama\195\177o de fuente"
--[[Translation missing --]]
L["Frame scraping timeout exceeded, results will be incomplete."] = "Frame scraping timeout exceeded, results will be incomplete."
--[[Translation missing --]]
L["Frame to output the messages to."] = "Frame to output the messages to."
--[[Translation missing --]]
L["Frame to send the addon messages to."] = "Frame to send the addon messages to."
L["Friends"] = "Amigos"
--[[Translation missing --]]
L["Friends Whispers"] = "Friends Whispers"
--[[Translation missing --]]
L["Fun Filters"] = "Fun Filters"
--[[Translation missing --]]
L["Gamemenu Button"] = "Gamemenu Button"
--[[Translation missing --]]
L["General"] = "General"
--[[Translation missing --]]
L["General Tab Channels"] = "General Tab Channels"
L["Generate fake achievement links."] = "Generar vinculos de falso logro "
--[[Translation missing --]]
L["ginv"] = "ginv"
--[[Translation missing --]]
L["ginvite"] = "ginvite"
--[[Translation missing --]]
L["GInvite Alternate Command"] = "GInvite Alternate Command"
--[[Translation missing --]]
L["Gives the ability to add custom names to the chat messages for better recognition."] = "Gives the ability to add custom names to the chat messages for better recognition."
--[[Translation missing --]]
L["Gives you more flexibility in how you invite people to your group and guild."] = "Gives you more flexibility in how you invite people to your group and guild."
L["GKick Command"] = "Comando para expulsar de la hermandad"
--[[Translation missing --]]
L["GKick Target: |cffffff00%s|r"] = "GKick Target: |cffffff00%s|r"
L["gold"] = "Oro"
--[[Translation missing --]]
L["Gold Calculator"] = "Gold Calculator"
L["Group"] = "Grupo"
--[[Translation missing --]]
L["Group Invite Links"] = "Group Invite Links"
L["Group Say Command"] = "Decir en Grupo"
L["Guild"] = "Hermandad"
L["Guild Channel"] = "Canal de Hermandad"
L["Guild Chat"] = "Chat de Hermandad"
--[[Translation missing --]]
L["Guild cooperation mode"] = "Guild cooperation mode"
--[[Translation missing --]]
L["Guild Invite Links"] = "Guild Invite Links"
L["Guild Messages"] = "Mensaje de hermandad"
L["Guild Options"] = "Opciones de hermandad"
--[[Translation missing --]]
L["Guild Recruitment"] = "Guild Recruitment"
--[[Translation missing --]]
L["Guild Whispers"] = "Guild Whispers"
--[[Translation missing --]]
L["Guildmates"] = "Guildmates"
--[[Translation missing --]]
L["GuildSync: Accepted configuration update from %s"] = "GuildSync: Accepted configuration update from %s"
--[[Translation missing --]]
L["GuildSync: Error. Bad configuration received from %s"] = "GuildSync: Error. Bad configuration received from %s"
--[[Translation missing --]]
L["Handles chat tab flashing."] = "Handles chat tab flashing."
L["health"] = "Vida"
--[[Translation missing --]]
L["Here you can select which channels this module will scan for the keygroupWords to trigger the invite."] = "Here you can select which channels this module will scan for the keygroupWords to trigger the invite."
--[[Translation missing --]]
L["HH:MM (12-hour)"] = "HH:MM (12-hour)"
--[[Translation missing --]]
L["HH:MM (24-hour)"] = "HH:MM (24-hour)"
--[[Translation missing --]]
L["HH:MM:SS (24-hour)"] = "HH:MM:SS (24-hour)"
--[[Translation missing --]]
L["HH:MM:SS AM (12-hour)"] = "HH:MM:SS AM (12-hour)"
--[[Translation missing --]]
L["Hide Compatibility Message"] = "Hide Compatibility Message"
--[[Translation missing --]]
L["Hide name if it matches your character's name"] = "Hide name if it matches your character's name"
--[[Translation missing --]]
L["Hide Own Failed Taunts"] = "Hide Own Failed Taunts"
--[[Translation missing --]]
L["Hide Own Taunts"] = "Hide Own Taunts"
--[[Translation missing --]]
L["Hide the compatibility message in chat when KlixUI is installed."] = "Hide the compatibility message in chat when KlixUI is installed."
--[[Translation missing --]]
L["Hiding Configuration Options"] = "Hiding Configuration Options"
--[[Translation missing --]]
L["Highlight Color"] = "Highlight Color"
--[[Translation missing --]]
L["Highlight Substitutions"] = "Highlight Substitutions"
--[[Translation missing --]]
L["Highlight Term"] = "Highlight Term"
--[[Translation missing --]]
L["Highlight the search term in the results."] = "Highlight the search term in the results."
--[[Translation missing --]]
L["Highlight the substitutions that are made by changing their color."] = "Highlight the substitutions that are made by changing their color."
L["honor"] = "Honor"
--[[Translation missing --]]
L["honour"] = "honour"
--[[Translation missing --]]
L["Hook the GameTooltip to add information to pet tooltips."] = "Hook the GameTooltip to add information to pet tooltips."
--[[Translation missing --]]
L["Hook the tooltip to show the toon's main or alts."] = "Hook the tooltip to show the toon's main or alts."
--[[Translation missing --]]
L["Hook Tooltip"] = "Hook Tooltip"
L["Hour (12hr)"] = "Hora (12hr)"
L["Hour (24hr)"] = "Hora (24hr)"
--[[Translation missing --]]
L["Hover Links"] = "Hover Links"
--[[Translation missing --]]
L["How many pets on a single line when they're being listed using the |cff00ff96/pets list|r command."] = "How many pets on a single line when they're being listed using the |cff00ff96/pets list|r command."
--[[Translation missing --]]
L["How often announce your message to channel."] = "How often announce your message to channel."
--[[Translation missing --]]
L["How to filter any matches."] = "How to filter any matches."
L["Hunter"] = "Cazador"
L["HUNTER"] = "CAZADOR"
--[[Translation missing --]]
L["I am |cff1784d1%s|r"] = "I am |cff1784d1%s|r"
--[[Translation missing --]]
L["Icon Orientation"] = "Icon Orientation"
--[[Translation missing --]]
L["Icon Size"] = "Icon Size"
--[[Translation missing --]]
L["Icon to the left or right of the item link."] = "Icon to the left or right of the item link."
--[[Translation missing --]]
L["Identify Chat Frames"] = "Identify Chat Frames"
--[[Translation missing --]]
L["If a keyword is found should the module filter the line?"] = "If a keyword is found should the module filter the line?"
--[[Translation missing --]]
L["If no name can be found for an 'alt' rank character, use entire note"] = "If no name can be found for an 'alt' rank character, use entire note"
--[[Translation missing --]]
L["If the name specified above matches your current character's name, this module will not add it again if this option is checked."] = "If the name specified above matches your current character's name, this module will not add it again if this option is checked."
--[[Translation missing --]]
L["Ignore any messages you send containing keywords."] = "Ignore any messages you send containing keywords."
--[[Translation missing --]]
L["Ignore Your Messages"] = "Ignore Your Messages"
--[[Translation missing --]]
L[ [=[Improve the Auction Expired message.

|cffffff00%s|r]=] ] = [=[Improve the Auction Expired message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Improve the Auction Outbid message.

|cffffff00%s|r]=] ] = [=[Improve the Auction Outbid message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Improve the Auction Removed message.

|cffffff00%s|r]=] ] = [=[Improve the Auction Removed message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Improve the Auction Sold message.

|cffffff00%s|r]=] ] = [=[Improve the Auction Sold message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L[ [=[Improve the Auction Won message.

|cffffff00%s|r]=] ] = [=[Improve the Auction Won message.

|cffffff00%s|r]=]
--[[Translation missing --]]
L["Improved Auction Messages"] = "Improved Auction Messages"
--[[Translation missing --]]
L["In Command"] = "In Command"
L["Inactive Modules"] = "Modulos Inactivos"
--[[Translation missing --]]
L["Include level"] = "Include level"
--[[Translation missing --]]
L["Include Prefix"] = "Include Prefix"
--[[Translation missing --]]
L["Include the"] = "Include the"
--[[Translation missing --]]
L["Include the player's level"] = "Include the player's level"
--[[Translation missing --]]
L["Incomplete"] = "Incomplete"
L["Inscription"] = "Inscripcion"
L["Instance"] = "Estancia"
L["Instance Channel"] = [=[Canal de estancia
]=]
--[[Translation missing --]]
L["Instance Leader"] = "Instance Leader"
--[[Translation missing --]]
L[ [=[Instantly send the information of whom whispered you.

]=] ] = [=[Instantly send the information of whom whispered you.

]=]
--[[Translation missing --]]
L["inv"] = "inv"
L["Invalid achievement ID for %s%d|r."] = "Id de logro invalida de %s%d|r."
L["Invalid achievement link provided."] = "Vinculo proporcionado de logro invalido "
--[[Translation missing --]]
L["Invalid format found on entry \"%s\"."] = "Invalid format found on entry \"%s\"."
--[[Translation missing --]]
L["invite"] = "invite"
--[[Translation missing --]]
L["Invite Links"] = "Invite Links"
--[[Translation missing --]]
L["It is certain."] = "It is certain."
--[[Translation missing --]]
L["It is decidedly so."] = "It is decidedly so."
--[[Translation missing --]]
L["Item Level"] = "Item Level"
--[[Translation missing --]]
L["Item Level Link"] = "Item Level Link"
L["Jewelcrafting"] = "Joyeria"
--[[Translation missing --]]
L["Joined Channel"] = "Joined Channel"
--[[Translation missing --]]
L["jp"] = "jp"
--[[Translation missing --]]
L["jpcap"] = "jpcap"
--[[Translation missing --]]
L["Just one character."] = "Just one character."
L["justice"] = "Justicia"
--[[Translation missing --]]
L["Keeps your channel colors by name rather than by number."] = "Keeps your channel colors by name rather than by number."
--[[Translation missing --]]
L["Keybinds"] = "Keybinds"
--[[Translation missing --]]
L["Keystone Announce"] = "Keystone Announce"
--[[Translation missing --]]
L["Keystone Conqueror Completion Status"] = "Keystone Conqueror Completion Status"
--[[Translation missing --]]
L["Keystone Master Completion Status"] = "Keystone Master Completion Status"
--[[Translation missing --]]
L["Keystone Progress"] = "Keystone Progress"
--[[Translation missing --]]
L["Keyword Sounds"] = "Keyword Sounds"
--[[Translation missing --]]
L["Keywords"] = "Keywords"
L["Leatherworking"] = "Peleteria"
L["Left"] = "Izquierda"
--[[Translation missing --]]
L["Left Bracket"] = "Left Bracket"
--[[Translation missing --]]
L["Left Channel"] = "Left Channel"
L["Left Click"] = "Clic Izquierdo"
--[[Translation missing --]]
L["Lets you alt-click player names to invite them to your party."] = "Lets you alt-click player names to invite them to your party."
--[[Translation missing --]]
L["Lets you set the justification of text in your chat frames."] = "Lets you set the justification of text in your chat frames."
--[[Translation missing --]]
L["Level Difference"] = "Level Difference"
L["Level Location"] = "Posici\195\179n de nivel"
--[[Translation missing --]]
L["Level: |cffffff00%s|r, Message: |cffffff00%s|r"] = "Level: |cffffff00%s|r, Message: |cffffff00%s|r"
L["Link All Professions"] = "Enlazar todas las profesiones"
--[[Translation missing --]]
L["Login"] = "Login"
--[[Translation missing --]]
L["Look in guildnotes for character names, unless a note is set manually"] = "Look in guildnotes for character names, unless a note is set manually"
--[[Translation missing --]]
L["Loot Icons"] = "Loot Icons"
L["Loss Color"] = "Perdida de color"
--[[Translation missing --]]
L["lowercase"] = "lowercase"
L["MAGE"] = "MAGO"
L["Mage"] = "Mago"
--[[Translation missing --]]
L["Magic 8-Ball"] = "Magic 8-Ball"
--[[Translation missing --]]
L["Magic 8-Ball says: %s"] = "Magic 8-Ball says: %s"
--[[Translation missing --]]
L["Magic 8-Ball Says: I am ready to answer your questions!  Do \"%s <question>\" to ask me a question."] = "Magic 8-Ball Says: I am ready to answer your questions!  Do \"%s <question>\" to ask me a question."
--[[Translation missing --]]
L["Main: "] = "Main: "
--[[Translation missing --]]
L["Makes it easy to identify which person popped bloodlust/heroism."] = "Makes it easy to identify which person popped bloodlust/heroism."
--[[Translation missing --]]
L["Makes it easy to navigate through the different channels by pressing the 'TAB' Key."] = "Makes it easy to navigate through the different channels by pressing the 'TAB' Key."
L["Male"] = "Hombre"
L["mana"] = "Mana"
--[[Translation missing --]]
L["Material Quantities"] = "Material Quantities"
--[[Translation missing --]]
L["Materials Farming"] = "Materials Farming"
--[[Translation missing --]]
L["Materials to Track"] = "Materials to Track"
--[[Translation missing --]]
L["Maximum Delay"] = "Maximum Delay"
--[[Translation missing --]]
L["Maximum time, in seconds, to wait before bidding someone farewell."] = "Maximum time, in seconds, to wait before bidding someone farewell."
--[[Translation missing --]]
L["Maximum time, in seconds, to wait before congratulating someone."] = "Maximum time, in seconds, to wait before congratulating someone."
--[[Translation missing --]]
L["Maximum time, in seconds, to wait before welcoming someone."] = "Maximum time, in seconds, to wait before welcoming someone."
--[[Translation missing --]]
L["Maximum time, in seconds, to wait before whispering someone the link."] = "Maximum time, in seconds, to wait before whispering someone the link."
L["Message Color"] = "Color del mensaje"
--[[Translation missing --]]
L["Message color."] = "Message color."
--[[Translation missing --]]
L["Message highlight color."] = "Message highlight color."
--[[Translation missing --]]
L["Message Settings"] = "Message Settings"
--[[Translation missing --]]
L["Message Throttle"] = "Message Throttle"
--[[Translation missing --]]
L["Message to announce, 2 lines max"] = "Message to announce, 2 lines max"
--[[Translation missing --]]
L[ [=[Messages for when multiple people complete achievements.  A random one will always be selected.

|cffff0000Wildcards do not apply for multiple achievements.|r]=] ] = [=[Messages for when multiple people complete achievements.  A random one will always be selected.

|cffff0000Wildcards do not apply for multiple achievements.|r]=]
--[[Translation missing --]]
L[ [=[Messages for when someone completes an achievement.  A random one will always be selected.

|cffFA6400Wildcards|r
|cff00ff00#name#|r  - Name of the person.
|cff00ff00#achieve#|r - Achievement they completed.]=] ] = [=[Messages for when someone completes an achievement.  A random one will always be selected.

|cffFA6400Wildcards|r
|cff00ff00#name#|r  - Name of the person.
|cff00ff00#achieve#|r - Achievement they completed.]=]
--[[Translation missing --]]
L[ [=[Messages to use in guild chat when someone leaves your guild.

|cffFA6400Wildcards|r
|cff00ff00#name#|r - Person who left.
|cff00ff00#guild#|r - Name of your guild.]=] ] = [=[Messages to use in guild chat when someone leaves your guild.

|cffFA6400Wildcards|r
|cff00ff00#name#|r - Person who left.
|cff00ff00#guild#|r - Name of your guild.]=]
--[[Translation missing --]]
L[ [=[Messages to use in the whisper when someone leaves your guild.

|cffFA6400Wildcards|r
|cff00ff00#name#|r - Person who left.
|cff00ff00#guild#|r - Name of your guild.]=] ] = [=[Messages to use in the whisper when someone leaves your guild.

|cffFA6400Wildcards|r
|cff00ff00#name#|r - Person who left.
|cff00ff00#guild#|r - Name of your guild.]=]
--[[Translation missing --]]
L[ [=[Messages to use when someone joins your guild.

|cffFA6400Wildcards|r
|cff00ff00#name#|r - Person who joined.
|cff00ff00#guild#|r - Name of your guild.]=] ] = [=[Messages to use when someone joins your guild.

|cffFA6400Wildcards|r
|cff00ff00#name#|r - Person who joined.
|cff00ff00#guild#|r - Name of your guild.]=]
--[[Translation missing --]]
L[ [=[Messages to use when someone says "ding".

|cffFA6400Wildcards|r
|cff00ff00#name#|r - Who said ding.
|cff00ff00#guild#|r - Their current level.]=] ] = [=[Messages to use when someone says "ding".

|cffFA6400Wildcards|r
|cff00ff00#name#|r - Who said ding.
|cff00ff00#guild#|r - Their current level.]=]
L["Minimap Button"] = "Boton del Minimapa"
--[[Translation missing --]]
L["Minimum Delay"] = "Minimum Delay"
L["Minimum Level"] = "Nivel Minimo"
--[[Translation missing --]]
L["Minimum level required for an achievement to not be filtered."] = "Minimum level required for an achievement to not be filtered."
--[[Translation missing --]]
L["Minimum time, in seconds, to wait before bidding someone farewell."] = "Minimum time, in seconds, to wait before bidding someone farewell."
--[[Translation missing --]]
L["Minimum time, in seconds, to wait before congratulating someone."] = "Minimum time, in seconds, to wait before congratulating someone."
--[[Translation missing --]]
L["Minimum time, in seconds, to wait before welcoming someone."] = "Minimum time, in seconds, to wait before welcoming someone."
--[[Translation missing --]]
L["Minimum time, in seconds, to wait before whispering someone the link."] = "Minimum time, in seconds, to wait before whispering someone the link."
L["Minute"] = "Minuto"
--[[Translation missing --]]
L["MM:SS"] = "MM:SS"
--[[Translation missing --]]
L["Monitor Chat Events"] = "Monitor Chat Events"
--[[Translation missing --]]
L["Monitor guild chat."] = "Monitor guild chat."
--[[Translation missing --]]
L["Monitor party chat."] = "Monitor party chat."
--[[Translation missing --]]
L["Monitor raid chat."] = "Monitor raid chat."
--[[Translation missing --]]
L["Monitor say chat."] = "Monitor say chat."
--[[Translation missing --]]
L["Monitor text in this channel for link triggers."] = "Monitor text in this channel for link triggers."
--[[Translation missing --]]
L["Monitor whispers."] = "Monitor whispers."
--[[Translation missing --]]
L["Monitor yell chat."] = "Monitor yell chat."
L["Monk"] = "Monje"
L["MONK"] = "MONJE"
--[[Translation missing --]]
L["Monster Emote"] = "Monster Emote"
--[[Translation missing --]]
L["Monster Say"] = "Monster Say"
L["Month"] = "Mes"
--[[Translation missing --]]
L["Most likely."] = "Most likely."
--[[Translation missing --]]
L["Multiple Achievement Messages"] = "Multiple Achievement Messages"
--[[Translation missing --]]
L["Multiple Invite Command"] = "Multiple Invite Command"
--[[Translation missing --]]
L["My reply is no."] = "My reply is no."
--[[Translation missing --]]
L["My sources say no."] = "My sources say no."
L["Name"] = "Nombre"
L["Name color"] = "Color de nombre"
L["Nearby People"] = "Gente cercana"
--[[Translation missing --]]
L["Never"] = "Never"
--[[Translation missing --]]
L["New Version Notify"] = "New Version Notify"
--[[Translation missing --]]
L["No"] = "No"
--[[Translation missing --]]
L["No custom emotes are currently being used."] = "No custom emotes are currently being used."
L["No Filter"] = "Sin filtro"
--[[Translation missing --]]
L["No RealNames"] = "No RealNames"
L["None"] = "Ninguno"
--[[Translation missing --]]
L["Not Capturable"] = "Not Capturable"
--[[Translation missing --]]
L["Not Found"] = "Not Found"
--[[Translation missing --]]
L["Not Owned"] = "Not Owned"
--[[Translation missing --]]
L["Not tracking %s."] = "Not tracking %s."
--[[Translation missing --]]
L["NoTarget"] = "NoTarget"
--[[Translation missing --]]
L["Notifies your party or raid if people are taking a lot of avoidable damage from ground auras."] = "Notifies your party or raid if people are taking a lot of avoidable damage from ground auras."
--[[Translation missing --]]
L["Notify on new release?"] = "Notify on new release?"
--[[Translation missing --]]
L["Notify on Role Set"] = "Notify on Role Set"
--[[Translation missing --]]
L["Num Channels"] = "Num Channels"
--[[Translation missing --]]
L["Numbered Channels"] = "Numbered Channels"
--[[Translation missing --]]
L["Off"] = "Off"
L["Officer"] = "Oficial"
L["Officer Channel"] = "Canal de Oficial"
L["Officer Chat"] = "Chat de Oficiales"
--[[Translation missing --]]
L["On"] = "On"
--[[Translation missing --]]
L["On (%d min)"] = "On (%d min)"
--[[Translation missing --]]
L["On (%d sec)"] = "On (%d sec)"
--[[Translation missing --]]
L["One or more of the changes you have made require you to reload your UI."] = "One or more of the changes you have made require you to reload your UI."
--[[Translation missing --]]
L["Only filter achievements earned by players below a certain level."] = "Only filter achievements earned by players below a certain level."
--[[Translation missing --]]
L["Open Config"] = "Open Config"
--[[Translation missing --]]
L["Open ElvUI Config"] = "Open ElvUI Config"
L["Open ElvUI's Config"] = "Abrir configuracion de ElvUI's"
L["Opens configuration window."] = "Abrir ventana de configuracion"
L["Other Channels"] = "Otros Canales"
--[[Translation missing --]]
L["Ouput Frame"] = "Ouput Frame"
--[[Translation missing --]]
L["Outline"] = "Outline"
--[[Translation missing --]]
L["Outlook good."] = "Outlook good."
--[[Translation missing --]]
L["Outlook not so good."] = "Outlook not so good."
--[[Translation missing --]]
L["Output Channel"] = "Output Channel"
--[[Translation missing --]]
L["Output Color"] = "Output Color"
--[[Translation missing --]]
L["Output color of the rerouted messages."] = "Output color of the rerouted messages."
--[[Translation missing --]]
L["Output Frame"] = "Output Frame"
--[[Translation missing --]]
L["Output Message Every..."] = "Output Message Every..."
--[[Translation missing --]]
L["Output the message every X times you gain XP."] = "Output the message every X times you gain XP."
--[[Translation missing --]]
L["Output To..."] = "Output To..."
L["Owned Only"] = "Conocidas solo"
L["PALADIN"] = true
L["Paladin"] = true
--[[Translation missing --]]
L["Parameter: |cffffff00%s|r"] = "Parameter: |cffffff00%s|r"
L["Party"] = "Grupo"
L["Party Channel"] = "Canal de Grupo"
L["Party Leader"] = "L\195\173der de Grupo"
L["Party Members"] = "Miembros del grupo"
--[[Translation missing --]]
L["Percent Chance"] = "Percent Chance"
--[[Translation missing --]]
L["Perhaps you meant '*' (multiplication)?"] = "Perhaps you meant '*' (multiplication)?"
L["Pet Battle Info"] = "Informacion de mascota de batalla"
L["Pet Battles"] = "Mascotas de batalla"
--[[Translation missing --]]
L["Pet Combat Log"] = "Pet Combat Log"
--[[Translation missing --]]
L["Pets Per Line"] = "Pets Per Line"
--[[Translation missing --]]
L["Place the level before or after the player's name."] = "Place the level before or after the player's name."
--[[Translation missing --]]
L["Play a sound when it pops up."] = "Play a sound when it pops up."
L["Play Sound"] = "Reproducir sonido"
L["Player Class"] = "Clase del Jugador"
--[[Translation missing --]]
L["Player Level"] = "Player Level"
--[[Translation missing --]]
L["Player level display options."] = "Player level display options."
--[[Translation missing --]]
L["Player Names"] = "Player Names"
--[[Translation missing --]]
L["Player's Average iLvl"] = "Player's Average iLvl"
L["Player's Class"] = "Clase del jugador"
L["Player's Gender"] = "Genero del jugador"
L["Player's Health"] = "Vida del jugador"
L["Player's Health Deficit"] = "Deficit de vida del jugador"
L["Player's Health Percent"] = "Porcentaje de vida del jugador"
L["Players Level"] = "Nivel del jugador"
L["Player's Location"] = "Localizacion del jugador"
L["Player's Mana"] = "Mana del jugador"
L["Player's Mana Deficit"] = "Deficit de mana del jugador"
L["Player's Mana Percent"] = "Porcentaje de mana del jugador"
L["Player's Max Health"] = "Salud maxima del jugador"
L["Player's Max Mana"] = "Mana maximo del jugador"
L["Player's Name"] = "Nombre del jugador"
--[[Translation missing --]]
L["Player's X-Coordinate"] = "Player's X-Coordinate"
--[[Translation missing --]]
L["Player's Y-Coordinate"] = "Player's Y-Coordinate"
L["Player's Zone"] = "Zona del jugador"
--[[Translation missing --]]
L["Plays a sound when one of your ElvUI keywords is found."] = "Plays a sound when one of your ElvUI keywords is found."
--[[Translation missing --]]
L["Plays a sound, of your choosing (via LibSharedMedia-3.0), whenever a message is received in a given channel."] = "Plays a sound, of your choosing (via LibSharedMedia-3.0), whenever a message is received in a given channel."
--[[Translation missing --]]
L["Plugins by |cff0070deCrackpotx|r"] = "Plugins by |cff0070deCrackpotx|r"
--[[Translation missing --]]
L["Popup"] = "Popup"
--[[Translation missing --]]
L["Popup Messages"] = "Popup Messages"
--[[Translation missing --]]
L["PopupMessage"] = "PopupMessage"
L["power"] = "Poder"
--[[Translation missing --]]
L["Prefix Character"] = "Prefix Character"
--[[Translation missing --]]
L["prefix when a message's output is"] = "prefix when a message's output is"
L["PRIEST"] = "SACERDOTE"
L["Priest"] = "Sacerdote"
--[[Translation missing --]]
L["Print Addon Version"] = "Print Addon Version"
--[[Translation missing --]]
L["Print hidden addon messages in a chat frame.  This can be useful to debugging addon issues."] = "Print hidden addon messages in a chat frame.  This can be useful to debugging addon issues."
--[[Translation missing --]]
L["Print this again."] = "Print this again."
--[[Translation missing --]]
L["Prints a link you can click to congratulate when someone obtains an achievement."] = "Prints a link you can click to congratulate when someone obtains an achievement."
--[[Translation missing --]]
L["Prints a message in the chat with your remain XP needed to level up."] = "Prints a message in the chat with your remain XP needed to level up."
--[[Translation missing --]]
L["Prints module status."] = "Prints module status."
--[[Translation missing --]]
L["Progress Updates"] = "Progress Updates"
--[[Translation missing --]]
L["Provides |cff00ff00/ginv|r, an alternative to |cff00ff00/ginvite|r command, for us lazy folks."] = "Provides |cff00ff00/ginv|r, an alternative to |cff00ff00/ginvite|r command, for us lazy folks."
--[[Translation missing --]]
L[ [=[Provides |cff00ff00/minv|r to invite multiple people at once. Also adds custom abbreviations for characters which are invited often.

Module Written by Bj??rn Benjamin Hiller <bjoern.hiller@gmail.com>]=] ] = [=[Provides |cff00ff00/minv|r to invite multiple people at once. Also adds custom abbreviations for characters which are invited often.

Module Written by Bj\195\182rn Benjamin Hiller <bjoern.hiller@gmail.com>]=]
--[[Translation missing --]]
L["Provides a /in command to delay the execution of code in macros and other settings."] = "Provides a /in command to delay the execution of code in macros and other settings."
--[[Translation missing --]]
L["Provides a |cff00ff00/gkick|r command, as it should be."] = "Provides a |cff00ff00/gkick|r command, as it should be."
--[[Translation missing --]]
L["Provides a |cff00ff96/gs|r slash command to let you speak in your group (raid, party, or instance) automatically."] = "Provides a |cff00ff96/gs|r slash command to let you speak in your group (raid, party, or instance) automatically."
--[[Translation missing --]]
L[ [=[Provides a few tools to help me (Crackpotx), develop this addon as well as diagnose and fix any errors that are reported.

|cff00ff00You can leave this addon disabled unless I (Crackpotx) ask you to enable it for some debugging.|r]=] ] = [=[Provides a few tools to help me (Crackpotx), develop this addon as well as diagnose and fix any errors that are reported.

|cff00ff00You can leave this addon disabled unless I (Crackpotx) ask you to enable it for some debugging.|r]=]
--[[Translation missing --]]
L["Provides basic chat subtitutions."] = "Provides basic chat subtitutions."
--[[Translation missing --]]
L["Provides keybinds to make talking in a specific chat easier."] = "Provides keybinds to make talking in a specific chat easier."
--[[Translation missing --]]
L["Provides options to color player names, add player levels, and add tab completion of player names."] = "Provides options to color player names, add player levels, and add tab completion of player names."
--[[Translation missing --]]
L[ [=[Put each emote on a separate line.
Separate the command from the text with a colon (":").]=] ] = [=[Put each emote on a separate line.
Separate the command from the text with a colon (":").]=]
--[[Translation missing --]]
L["Quality"] = "Quality"
--[[Translation missing --]]
L["Quality Notification"] = "Quality Notification"
L["Raid"] = "Banda"
--[[Translation missing --]]
L["Raid Boss Emote"] = "Raid Boss Emote"
L["Raid Channel"] = "Canal de Banda"
L["Raid Leader"] = "Lider de Banda"
L["Raid Members"] = "Miembros de Banda"
L["Raid Warning"] = "Aviso de Banda"
L["Raid Warning Channel"] = "Canal de Aviso de Banda"
L["Random Number"] = "Numero aleatorio"
--[[Translation missing --]]
L["Ready Check Command"] = "Ready Check Command"
--[[Translation missing --]]
L["RealID Brackets"] = "RealID Brackets"
--[[Translation missing --]]
L["Really remove this word from your trigger list?"] = "Really remove this word from your trigger list?"
--[[Translation missing --]]
L["Release Command"] = "Release Command"
--[[Translation missing --]]
L["ReloadUI"] = "ReloadUI"
--[[Translation missing --]]
L["Remaining: %s, Cost: $%d"] = "Remaining: %s, Cost: $%d"
--[[Translation missing --]]
L["Reminder"] = "Reminder"
--[[Translation missing --]]
L["Remove"] = "Remove"
--[[Translation missing --]]
L["Remove a word from your group invite trigger list"] = "Remove a word from your group invite trigger list"
--[[Translation missing --]]
L["Remove a word from your guild invite trigget list."] = "Remove a word from your guild invite trigget list."
--[[Translation missing --]]
L["Remove Group Trigger"] = "Remove Group Trigger"
--[[Translation missing --]]
L["Remove Guild Trigger"] = "Remove Guild Trigger"
--[[Translation missing --]]
L["Removes the combat log chattab from the chat window."] = "Removes the combat log chattab from the chat window."
--[[Translation missing --]]
L["Repeat Command"] = "Repeat Command"
--[[Translation missing --]]
L["Repeat Question"] = "Repeat Question"
--[[Translation missing --]]
L["Repeat the question when giving a response."] = "Repeat the question when giving a response."
--[[Translation missing --]]
L["Replace this channel name with..."] = "Replace this channel name with..."
--[[Translation missing --]]
L["Reply hazy, try again."] = "Reply hazy, try again."
--[[Translation missing --]]
L["Reported by %s"] = "Reported by %s"
L["Reputation"] = "Reputacion"
L["Reputation Color"] = "Color de reputacion"
--[[Translation missing --]]
L["Require the alt key to be pressed to use the arrow keys on editboxes."] = "Require the alt key to be pressed to use the arrow keys on editboxes."
--[[Translation missing --]]
L["Reroute Auction Messages"] = "Reroute Auction Messages"
--[[Translation missing --]]
L["Reset alt names and their mains."] = "Reset alt names and their mains."
--[[Translation missing --]]
L["Reset ChatFrame text justifications to defaults (left)."] = "Reset ChatFrame text justifications to defaults (left)."
L["Reset Data"] = "Reiniciar datos"
--[[Translation missing --]]
L["Reset Font Data"] = "Reset Font Data"
--[[Translation missing --]]
L["Reset Materials"] = "Reset Materials"
--[[Translation missing --]]
L["Reset Names"] = "Reset Names"
--[[Translation missing --]]
L[ [=[Reset saved mains/alts.

|cffff0000This CANNOT be undone.|r]=] ] = [=[Reset saved mains/alts.

|cffff0000This CANNOT be undone.|r]=]
--[[Translation missing --]]
L["Reset Text Justitification"] = "Reset Text Justitification"
--[[Translation missing --]]
L["Resets all chat frames to their original font settings."] = "Resets all chat frames to their original font settings."
L["Right"] = "Derecha"
--[[Translation missing --]]
L["Right Bracket"] = "Right Bracket"
L["Right Click"] = "Clic derecho"
L["Rogue"] = "P\195\173caro"
L["ROGUE"] = "PICARO"
--[[Translation missing --]]
L["Role Poll Command"] = "Role Poll Command"
--[[Translation missing --]]
L["Role Set: %s%s|r"] = "Role Set: %s%s|r"
--[[Translation missing --]]
L["Role will not be set while in combat."] = "Role will not be set while in combat."
--[[Translation missing --]]
L["Roll Color"] = "Roll Color"
--[[Translation missing --]]
L["Roll Pattern: |cffffff00%s|r"] = "Roll Pattern: |cffffff00%s|r"
--[[Translation missing --]]
L["'s"] = "'s"
--[[Translation missing --]]
L["Save all /who data"] = "Save all /who data"
--[[Translation missing --]]
L["Save class data from /who queries between sessions."] = "Save class data from /who queries between sessions."
--[[Translation missing --]]
L["Save class data from friends between sessions."] = "Save class data from friends between sessions."
--[[Translation missing --]]
L["Save class data from groups between sessions."] = "Save class data from groups between sessions."
--[[Translation missing --]]
L["Save class data from guild between sessions."] = "Save class data from guild between sessions."
--[[Translation missing --]]
L["Save class data from target/mouseover between sessions."] = "Save class data from target/mouseover between sessions."
--[[Translation missing --]]
L["Save Data"] = "Save Data"
--[[Translation missing --]]
L["Save data between sessions. Will increase memory usage"] = "Save data between sessions. Will increase memory usage"
L["Say"] = "Decir"
--[[Translation missing --]]
L["Say Chat"] = "Say Chat"
--[[Translation missing --]]
L["Scrape Time"] = "Scrape Time"
L["Scroll Reminder"] = "Recordatorio de desplazamiento"
L["Search"] = "Buscar"
--[[Translation missing --]]
L["Search Results |cff9382c9(%d Found)|r:"] = "Search Results |cff9382c9(%d Found)|r:"
L["Search Results:"] = "Resutaldor de la busqueda"
--[[Translation missing --]]
L["Search term is too short."] = "Search term is too short."
L["Second"] = "Segundos"
--[[Translation missing --]]
L["Select a color for this channel."] = "Select a color for this channel."
--[[Translation missing --]]
L["Select a method for coloring player names"] = "Select a method for coloring player names"
--[[Translation missing --]]
L["Select an option if you want the zone list to only contain pets you own or do not own."] = "Select an option if you want the zone list to only contain pets you own or do not own."
--[[Translation missing --]]
L["Select channels"] = "Select channels"
--[[Translation missing --]]
L["Select how you want the player's level colored."] = "Select how you want the player's level colored."
--[[Translation missing --]]
L["Select the channels to apply the filter to."] = "Select the channels to apply the filter to."
--[[Translation missing --]]
L["Select the channels you want monitored."] = "Select the channels you want monitored."
--[[Translation missing --]]
L["Select the channels you want to monitor."] = "Select the channels you want to monitor."
--[[Translation missing --]]
L["Select the chat frames you want to monitor for substitutions.  You can use the chat command |cff00ff96/cf|r to determine a chat frame's number."] = "Select the chat frames you want to monitor for substitutions.  You can use the chat command |cff00ff96/cf|r to determine a chat frame's number."
--[[Translation missing --]]
L["Select the custom color to use for alt names"] = "Select the custom color to use for alt names"
--[[Translation missing --]]
L["Select which channels to flash when a message is received."] = "Select which channels to flash when a message is received."
--[[Translation missing --]]
L["Select which factions you would like to receive notifications for."] = "Select which factions you would like to receive notifications for."
--[[Translation missing --]]
L["Self"] = "Self"
--[[Translation missing --]]
L["Semi-Auto Congratulate"] = "Semi-Auto Congratulate"
--[[Translation missing --]]
L["Send a chat message when a role is set/changed."] = "Send a chat message when a role is set/changed."
--[[Translation missing --]]
L["Send a tell to your target."] = "Send a tell to your target."
--[[Translation missing --]]
L["Send a whisper to the person who left."] = "Send a whisper to the person who left."
L["Send Guild Messages"] = "Enviar mensaje de hermandad"
--[[Translation missing --]]
L["Send guild recruitment messages to various chat channels."] = "Send guild recruitment messages to various chat channels."
--[[Translation missing --]]
L["Send messages to guild chat when someone leaves."] = "Send messages to guild chat when someone leaves."
--[[Translation missing --]]
L["Send Reminder"] = "Send Reminder"
L["Send Whisper"] = "Enviar susurro"
L["Separator"] = "Separador"
--[[Translation missing --]]
L["Set DND"] = "Set DND"
--[[Translation missing --]]
L["Set DND message"] = "Set DND message"
--[[Translation missing --]]
L["Set Main"] = "Set Main"
--[[Translation missing --]]
L["Set the coloring mode for alt names"] = "Set the coloring mode for alt names"
--[[Translation missing --]]
L["Set the message color.  This only applies if |cff00ff96Color by Channel|r is disabled or if there is no color for the channel."] = "Set the message color.  This only applies if |cff00ff96Color by Channel|r is disabled or if there is no color for the channel."
--[[Translation missing --]]
L["Set the sound to play."] = "Set the sound to play."
--[[Translation missing --]]
L["Settings"] = "Settings"
L["Shaman"] = "Cham\195\161n"
L["SHAMAN"] = "CHAMAN"
--[[Translation missing --]]
L["Shift + Left Click"] = "Shift + Left Click"
--[[Translation missing --]]
L["Shift + Right Click"] = "Shift + Right Click"
--[[Translation missing --]]
L["Short Format"] = "Short Format"
--[[Translation missing --]]
L["Short format (P for plate, L for leather, ...)"] = "Short format (P for plate, L for leather, ...)"
--[[Translation missing --]]
L["Show Alts"] = "Show Alts"
--[[Translation missing --]]
L["Show Armor Type"] = "Show Armor Type"
--[[Translation missing --]]
L["Show current to total XP percentage."] = "Show current to total XP percentage."
--[[Translation missing --]]
L["Show current token price at login."] = "Show current token price at login."
--[[Translation missing --]]
L["Show current token price."] = "Show current token price."
--[[Translation missing --]]
L["Show ElvUI Chat Tweaks Config Window"] = "Show ElvUI Chat Tweaks Config Window"
--[[Translation missing --]]
L["Show how many whispers you've received this session."] = "Show how many whispers you've received this session."
--[[Translation missing --]]
L["Show how many whispers, you've received this session."] = "Show how many whispers, you've received this session."
--[[Translation missing --]]
L["Show Main"] = "Show Main"
L["Show Percentage"] = "Mostrar porcentaje"
--[[Translation missing --]]
L["Show remaining rested XP."] = "Show remaining rested XP."
--[[Translation missing --]]
L["Show Rested XP"] = "Show Rested XP"
--[[Translation missing --]]
L["Show the total number of modules on the datatext."] = "Show the total number of modules on the datatext."
--[[Translation missing --]]
L["Show toon names instead of real names"] = "Show toon names instead of real names"
L["Show Total XP"] = "Mostrar experiencia total"
--[[Translation missing --]]
L["Show total XP needed to level."] = "Show total XP needed to level."
--[[Translation missing --]]
L["Show welcome message when logging in."] = "Show welcome message when logging in."
--[[Translation missing --]]
L["Showing Configuration Options"] = "Showing Configuration Options"
--[[Translation missing --]]
L["Shows messages in a popup frame."] = "Shows messages in a popup frame."
--[[Translation missing --]]
L["Signs point to yes."] = "Signs point to yes."
--[[Translation missing --]]
L["Silence in M+"] = "Silence in M+"
--[[Translation missing --]]
L["Silence Learned/Unlearned system messages."] = "Silence Learned/Unlearned system messages."
L["silver"] = "Plata"
--[[Translation missing --]]
L["Similar to the |cffffffIn Command|r module, except it will repeat the command X times."] = "Similar to the |cffffffIn Command|r module, except it will repeat the command X times."
--[[Translation missing --]]
L["Size of the coin icons.  Generally you want to use your font size or smaller."] = "Size of the coin icons.  Generally you want to use your font size or smaller."
--[[Translation missing --]]
L["Skipping. Message already advertised by %s"] = "Skipping. Message already advertised by %s"
--[[Translation missing --]]
L["Skipping. Trade: %d LFG: %d"] = "Skipping. Trade: %d LFG: %d"
--[[Translation missing --]]
L["Smart Group Channel"] = "Smart Group Channel"
L["Sound"] = "Sonido"
L[ [=[Sound to play when a message in %s is received.

|cff00ff00To disable set to "None"|r.]=] ] = [=[Sonido a reproducir cuando recibes un mensaje por %s

|cff00ff00Para desactivar establecer "Ninguno"|r.]=]
--[[Translation missing --]]
L["Spam CoolDown"] = "Spam CoolDown"
--[[Translation missing --]]
L["Spam Delay"] = "Spam Delay"
--[[Translation missing --]]
L["SPAM protection, lines"] = "SPAM protection, lines"
--[[Translation missing --]]
L["Spam Throttle"] = "Spam Throttle"
--[[Translation missing --]]
L["Squelch"] = "Squelch"
--[[Translation missing --]]
L["sretteL esreveR"] = "sretteL esreveR"
--[[Translation missing --]]
L["Standard Emote: |cffffff00%s|r"] = "Standard Emote: |cffffff00%s|r"
--[[Translation missing --]]
L["Standard Emotes"] = "Standard Emotes"
--[[Translation missing --]]
L["Standing Color"] = "Standing Color"
--[[Translation missing --]]
L["Stopped tracking %s."] = "Stopped tracking %s."
--[[Translation missing --]]
L["Strip RealID brackets"] = "Strip RealID brackets"
--[[Translation missing --]]
L["Substitutions"] = "Substitutions"
--[[Translation missing --]]
L["Suppress"] = "Suppress"
--[[Translation missing --]]
L["Suppress Recount/Skada/TinyDPS output into a clickable link, or filter it entirely."] = "Suppress Recount/Skada/TinyDPS output into a clickable link, or filter it entirely."
--[[Translation missing --]]
L["Symbol: |cffffff00%s|r"] = "Symbol: |cffffff00%s|r"
--[[Translation missing --]]
L["SYNC_KEY_HELP"] = "SYNC_KEY_HELP"
--[[Translation missing --]]
L["Synchronization key"] = "Synchronization key"
L["Tailoring"] = "Sastreria"
--[[Translation missing --]]
L["Talent Squelch"] = "Talent Squelch"
--[[Translation missing --]]
L["Talk to your group based on party/raid status."] = "Talk to your group based on party/raid status."
--[[Translation missing --]]
L["Target/Mouseover"] = "Target/Mouseover"
--[[Translation missing --]]
L["Target: |cffffff00%s|r"] = "Target: |cffffff00%s|r"
--[[Translation missing --]]
L["Target's Class"] = "Target's Class"
--[[Translation missing --]]
L["Target's Gender"] = "Target's Gender"
--[[Translation missing --]]
L["Target's Health"] = "Target's Health"
--[[Translation missing --]]
L["Target's Health Deficit"] = "Target's Health Deficit"
--[[Translation missing --]]
L["Target's Health Percent"] = "Target's Health Percent"
--[[Translation missing --]]
L["Target's Level"] = "Target's Level"
--[[Translation missing --]]
L["Target's Mana"] = "Target's Mana"
--[[Translation missing --]]
L["Target's Mana Deficit"] = "Target's Mana Deficit"
--[[Translation missing --]]
L["Target's Mana Percent"] = "Target's Mana Percent"
--[[Translation missing --]]
L["Target's Max Health"] = "Target's Max Health"
--[[Translation missing --]]
L["Target's Max Mana"] = "Target's Max Mana"
--[[Translation missing --]]
L["Target's Name"] = "Target's Name"
--[[Translation missing --]]
L["taunt"] = "taunt"
--[[Translation missing --]]
L["taunted"] = "taunted"
--[[Translation missing --]]
L["Tell Target"] = "Tell Target"
--[[Translation missing --]]
L["Test mode"] = "Test mode"
L["Text Justification"] = "Justificacion del Texto"
--[[Translation missing --]]
L["Text justification for ChatFrame %d."] = "Text justification for ChatFrame %d."
--[[Translation missing --]]
L["Text to trigger the addon to answer a question."] = "Text to trigger the addon to answer a question."
--[[Translation missing --]]
L[ [=[Thanks for using and supporting my work!  -- |cff0070deCrackpotx|r

|cffff0000If you find any bugs, or have any suggestions for any of my addons, please open a ticket at that particular addon's page on CurseForge.]=] ] = [=[Thanks for using and supporting my work!  -- |cff0070deCrackpotx|r

|cffff0000If you find any bugs, or have any suggestions for any of my addons, please open a ticket at that particular addon's page on CurseForge.]=]
--[[Translation missing --]]
L["The amount of each material you'd like to farm.  If you want an unlimited amount simply put a 0.  You must add a quantity for every entry, and it must correspond to the same line in the other box."] = "The amount of each material you'd like to farm.  If you want an unlimited amount simply put a 0.  You must add a quantity for every entry, and it must correspond to the same line in the other box."
--[[Translation missing --]]
L["The character in front of abbreviations to be recognised as such."] = "The character in front of abbreviations to be recognised as such."
--[[Translation missing --]]
L["The chat window taunts will be announced in when the output is set to"] = "The chat window taunts will be announced in when the output is set to"
--[[Translation missing --]]
L["The classic Magic 8-Ball brought to World of Warcraft!"] = "The classic Magic 8-Ball brought to World of Warcraft!"
--[[Translation missing --]]
L["The color to highlight the search term."] = "The color to highlight the search term."
--[[Translation missing --]]
L["The color to use when highlighting a substitution."] = "The color to use when highlighting a substitution."
--[[Translation missing --]]
L["The default color to use to color names."] = "The default color to use to color names."
--[[Translation missing --]]
L[ [=[The name or ID of the material you'd like to track.

|cff00ff00If you wish to use the item's name then the item must exist in your bags.  This is a limitation to the API, item ID's will always work as intended.|r]=] ] = [=[The name or ID of the material you'd like to track.

|cff00ff00If you wish to use the item's name then the item must exist in your bags.  This is a limitation to the API, item ID's will always work as intended.|r]=]
--[[Translation missing --]]
L["The name that should be displayed in your chat messages."] = "The name that should be displayed in your chat messages."
--[[Translation missing --]]
L["The percent chance the module has to bid someone farewell.  Higher the chance, the more likely it is to run.  This is a means to throttle, so as to prevent spam/annoyances."] = "The percent chance the module has to bid someone farewell.  Higher the chance, the more likely it is to run.  This is a means to throttle, so as to prevent spam/annoyances."
--[[Translation missing --]]
L["The percent chance the module has to congratulate someone.  Higher the chance, the more likely it is to run.  This is a means to throttle, so as to prevent spam/annoyances."] = "The percent chance the module has to congratulate someone.  Higher the chance, the more likely it is to run.  This is a means to throttle, so as to prevent spam/annoyances."
--[[Translation missing --]]
L["The percent chance the module has to welcome someone.  Higher the chance, the more likely it is to run.  This is a means to throttle, so as to prevent spam/annoyances."] = "The percent chance the module has to welcome someone.  Higher the chance, the more likely it is to run.  This is a means to throttle, so as to prevent spam/annoyances."
--[[Translation missing --]]
L["The size of the icon in the chat frame."] = "The size of the icon in the chat frame."
--[[Translation missing --]]
L["The time, in seconds, it takes for the same person to trigger the addon again."] = "The time, in seconds, it takes for the same person to trigger the addon again."
--[[Translation missing --]]
L["The time, in seconds, it takes for the same person to trigger the addon by saying ding."] = "The time, in seconds, it takes for the same person to trigger the addon by saying ding."
--[[Translation missing --]]
L["These are the keywords that the addon will look for first, when it finds a match then it will look for the actual profession being requested."] = "These are the keywords that the addon will look for first, when it finds a match then it will look for the actual profession being requested."
--[[Translation missing --]]
L["These channels apply to the General tab only."] = "These channels apply to the General tab only."
--[[Translation missing --]]
L["Thick Outline"] = "Thick Outline"
--[[Translation missing --]]
L[ [=[This addon is designed to add a lot of the functionality of full fledged chat addons like Prat or Chatter, but without a lot of the unneeded bloat.  I wrote it to be as lightweight as possible, while still powerful enough to accomplish it's intended function.
]=] ] = [=[This addon is designed to add a lot of the functionality of full fledged chat addons like Prat or Chatter, but without a lot of the unneeded bloat.  I wrote it to be as lightweight as possible, while still powerful enough to accomplish it's intended function.
]=]
--[[Translation missing --]]
L["This add-on will try to prevent spamming to idle channels. If there is no activity in a channel, then it waits a little longer. Specify how many lines should pass before add-on is allowed to announce message."] = "This add-on will try to prevent spamming to idle channels. If there is no activity in a channel, then it waits a little longer. Specify how many lines should pass before add-on is allowed to announce message."
--[[Translation missing --]]
L[ [=[This module adds a command to check your progress on the Keystone Conqueror and Master achievements.

|cff00ff00/ksc|r - Keystone Conqueror Progress
|cff00ff00/ksm|r - Keystone Master Progress
Use |cff00ff00track|r to toggle achievement tracking for each achievement.]=] ] = [=[This module adds a command to check your progress on the Keystone Conqueror and Master achievements.

|cff00ff00/ksc|r - Keystone Conqueror Progress
|cff00ff00/ksm|r - Keystone Master Progress
Use |cff00ff00track|r to toggle achievement tracking for each achievement.]=]
--[[Translation missing --]]
L[ [=[This module is for named channels only.  Allows you to filter certain words or phrases using Lua's pattern matching. For an item, achievement, spell, etc. just use the name of the item, don't try to link it.

For more information see this addon's Curse page.]=] ] = [=[This module is for named channels only.  Allows you to filter certain words or phrases using Lua's pattern matching. For an item, achievement, spell, etc. just use the name of the item, don't try to link it.

For more information see this addon's Curse page.]=]
--[[Translation missing --]]
L[ [=[This module is for numbered channels only.  Allows you to filter certain words or phrases using Lua's pattern matching. For an item, achievement, spell, etc. just use the name of the item, don't try to link it.

For more information see this addon's Curse page.]=] ] = [=[This module is for numbered channels only.  Allows you to filter certain words or phrases using Lua's pattern matching. For an item, achievement, spell, etc. just use the name of the item, don't try to link it.

For more information see this addon's Curse page.]=]
--[[Translation missing --]]
L[ [=[This module keeps watch on your chat for certain commands and responds accordingly.
Type |cff00ff96!ctk|r or |cff00ff96!keys|r to pull keystone information.]=] ] = [=[This module keeps watch on your chat for certain commands and responds accordingly.
Type |cff00ff96!ctk|r or |cff00ff96!keys|r to pull keystone information.]=]
--[[Translation missing --]]
L["This module will send a chat message every time you loot an item on your list with how many you have, and if applicable it will tell you how many more you need based on your set quantity.  This is useful if you need X amount of Y to be able to cook Z."] = "This module will send a chat message every time you loot an item on your list with how many you have, and if applicable it will tell you how many more you need based on your set quantity.  This is useful if you need X amount of Y to be able to cook Z."
--[[Translation missing --]]
L["This will synchronize message and settings between guild members. Latter version of a message will be used by all guild members with synchronization enabled."] = "This will synchronize message and settings between guild members. Latter version of a message will be used by all guild members with synchronization enabled."
--[[Translation missing --]]
L["Throttle"] = "Throttle"
--[[Translation missing --]]
L["Throttle Interval"] = "Throttle Interval"
--[[Translation missing --]]
L["Throttle Messages"] = "Throttle Messages"
--[[Translation missing --]]
L["Throttle output messages to prevent spam."] = "Throttle output messages to prevent spam."
--[[Translation missing --]]
L["Throttle the updates so you do not get spammed.  Set to |cff00ff960|r to disable."] = "Throttle the updates so you do not get spammed.  Set to |cff00ff960|r to disable."
--[[Translation missing --]]
L["Throttle Time"] = "Throttle Time"
--[[Translation missing --]]
L["Throttle time prevented %s update."] = "Throttle time prevented %s update."
--[[Translation missing --]]
L[ [=[Throttle to only answer a question every X seconds, to prevent spam.

|cffff0000Not recommended to disable this.|r]=] ] = [=[Throttle to only answer a question every X seconds, to prevent spam.

|cffff0000Not recommended to disable this.|r]=]
--[[Translation missing --]]
L["Time"] = "Time"
--[[Translation missing --]]
L["Time, in seconds, in between running the command."] = "Time, in seconds, in between running the command."
--[[Translation missing --]]
L[ [=[Time, in seconds, the module will wait after the first line is found to assume it is complete.

|cffffff00One (1) second seems to work.|r]=] ] = [=[Time, in seconds, the module will wait after the first line is found to assume it is complete.

|cffffff00One (1) second seems to work.|r]=]
--[[Translation missing --]]
L["Time, in seconds, to throttle output messages to prevent spam."] = "Time, in seconds, to throttle output messages to prevent spam."
--[[Translation missing --]]
L["Time, in seconds, to throttle the zone list to prevent any spam."] = "Time, in seconds, to throttle the zone list to prevent any spam."
--[[Translation missing --]]
L["Time, in seconds, you want the search to continue before it ends."] = "Time, in seconds, you want the search to continue before it ends."
--[[Translation missing --]]
L["Timestamp color"] = "Timestamp color"
--[[Translation missing --]]
L["Timestamp format"] = "Timestamp format"
--[[Translation missing --]]
L["Timestamps"] = "Timestamps"
--[[Translation missing --]]
L["To (|HBNplayer.-|h):"] = "To (|HBNplayer.-|h):"
--[[Translation missing --]]
L["To (|Hplayer.-|h):"] = "To (|Hplayer.-|h):"
--[[Translation missing --]]
L["To <Away>(|HBNplayer.-|h):"] = "To <Away>(|HBNplayer.-|h):"
--[[Translation missing --]]
L["To <Busy>(|HBNplayer.-|h):"] = "To <Busy>(|HBNplayer.-|h):"
--[[Translation missing --]]
L["TOC Version: |cff1784d1%s|r"] = "TOC Version: |cff1784d1%s|r"
--[[Translation missing --]]
L["Toggle Actionbar Keybinds"] = "Toggle Actionbar Keybinds"
--[[Translation missing --]]
L["Toggle Anchors"] = "Toggle Anchors"
--[[Translation missing --]]
L["Toggle coloring and change of the chat frame for pet combat log messages."] = "Toggle coloring and change of the chat frame for pet combat log messages."
--[[Translation missing --]]
L["Toggle coloring and changing of the chat frame for pet battle info messages."] = "Toggle coloring and changing of the chat frame for pet battle info messages."
--[[Translation missing --]]
L["Toggle the monitoring of chat events."] = "Toggle the monitoring of chat events."
--[[Translation missing --]]
L["Toggle the pet list message when you enter a different zone."] = "Toggle the pet list message when you enter a different zone."
--[[Translation missing --]]
L["Toggle the pet quality notifications when you join a wild pet battle."] = "Toggle the pet quality notifications when you join a wild pet battle."
--[[Translation missing --]]
L["Toggle the requirement of the Alt key to be pressed to use arrow keys to navigate an editbox."] = "Toggle the requirement of the Alt key to be pressed to use arrow keys to navigate an editbox."
--[[Translation missing --]]
L["Token Price"] = "Token Price"
--[[Translation missing --]]
L["Tooltip"] = "Tooltip"
--[[Translation missing --]]
L["Total Cost: $%d"] = "Total Cost: $%d"
--[[Translation missing --]]
L["Total Modules"] = "Total Modules"
--[[Translation missing --]]
L["Track Pets"] = "Track Pets"
--[[Translation missing --]]
L["Track Stable Masters"] = "Track Stable Masters"
--[[Translation missing --]]
L["Tracking %s."] = "Tracking %s."
--[[Translation missing --]]
L["Trigger"] = "Trigger"
--[[Translation missing --]]
L["Trigger Chat"] = "Trigger Chat"
--[[Translation missing --]]
L["Trigger Loots"] = "Trigger Loots"
--[[Translation missing --]]
L["Triggers"] = "Triggers"
--[[Translation missing --]]
L[ [=[Turns the timestamps into a link.

Click the link to copy the chat line.
Shift+Click the link to send the line to the last chat you used.]=] ] = [=[Turns the timestamps into a link.

Click the link to copy the chat line.
Shift+Click the link to send the line to the last chat you used.]=]
--[[Translation missing --]]
L["Type DND message there."] = "Type DND message there."
--[[Translation missing --]]
L["Type the message to announce, every line will be announced. Message should not be longer than 2 lines."] = "Type the message to announce, every line will be announced. Message should not be longer than 2 lines."
--[[Translation missing --]]
L["Unable to load the Alt Name module, please try again."] = "Unable to load the Alt Name module, please try again."
--[[Translation missing --]]
L["Unbalanced parameter count. Trailing Symbol: |cffffff00%s|r"] = "Unbalanced parameter count. Trailing Symbol: |cffffff00%s|r"
L["Unowned Only"] = "Desconocidas solo"
--[[Translation missing --]]
L["Unrecognized Symbol: |cffffff00%s|r"] = "Unrecognized Symbol: |cffffff00%s|r"
--[[Translation missing --]]
L["Unset variable |cffffff00%s|r."] = "Unset variable |cffffff00%s|r."
--[[Translation missing --]]
L["Update the quest progress when you receive Valor Points.  This will automatically be disabled when you complete the achievement."] = "Update the quest progress when you receive Valor Points.  This will automatically be disabled when you complete the achievement."
--[[Translation missing --]]
L["Uppercase"] = "Uppercase"
--[[Translation missing --]]
L["Use %sElvUI_CT|r instead of %sElvUI_ChatTweaks|r in messages printed by the addon."] = "Use %sElvUI_CT|r instead of %sElvUI_ChatTweaks|r in messages printed by the addon."
--[[Translation missing --]]
L["Use Alt Key"] = "Use Alt Key"
--[[Translation missing --]]
L["Use channel color"] = "Use channel color"
L["Use Channel Color"] = "Usar color de canal"
--[[Translation missing --]]
L["Use Coins"] = "Use Coins"
--[[Translation missing --]]
L["Use coins in the answers instead of abbreviations."] = "Use coins in the answers instead of abbreviations."
L["Use Custom Color"] = "Usar color personalizado"
--[[Translation missing --]]
L["Use guildnotes"] = "Use guildnotes"
--[[Translation missing --]]
L["Use Level Threshold"] = "Use Level Threshold"
--[[Translation missing --]]
L["Use Master Channel"] = "Use Master Channel"
--[[Translation missing --]]
L["Use PlayerNames Coloring"] = "Use PlayerNames Coloring"
--[[Translation missing --]]
L["Use Short Name"] = "Use Short Name"
--[[Translation missing --]]
L["Use Tab Complete"] = "Use Tab Complete"
--[[Translation missing --]]
L["Use tab key to automatically complete character names."] = "Use tab key to automatically complete character names."
--[[Translation missing --]]
L["Use the master channel when playing the sound."] = "Use the master channel when playing the sound."
--[[Translation missing --]]
L["Use this key to separate sync settings for different groups of peoples. Leave empty for default."] = "Use this key to separate sync settings for different groups of peoples. Leave empty for default."
--[[Translation missing --]]
L["using"] = "using"
--[[Translation missing --]]
L["Valid Events"] = "Valid Events"
L["valor"] = "Valor"
L["Valor Points"] = "Puntos de Valor"
--[[Translation missing --]]
L["Variable |cffffff00%s|r is set to |cff00ff00%s|r."] = "Variable |cffffff00%s|r is set to |cff00ff00%s|r."
--[[Translation missing --]]
L["Variable |cffffff00%s|r set to |cff00ff00%s|r."] = "Variable |cffffff00%s|r set to |cff00ff00%s|r."
--[[Translation missing --]]
L["Various Developer Tools"] = "Various Developer Tools"
L["Version"] = true
--[[Translation missing --]]
L["Version %s%s|r is loaded. Type %s/ct|r if you need help."] = "Version %s%s|r is loaded. Type %s/ct|r if you need help."
--[[Translation missing --]]
L["Version: |cff1784d1%s|r"] = "Version: |cff1784d1%s|r"
--[[Translation missing --]]
L["Very doubtful."] = "Very doubtful."
--[[Translation missing --]]
L["vp"] = "vp"
--[[Translation missing --]]
L["vpcap"] = "vpcap"
L["Warlock"] = "Brujo"
L["WARLOCK"] = "BRUJO"
L["WARRIOR"] = "GUERRERO"
L["Warrior"] = "Guerrero"
--[[Translation missing --]]
L["Welcome Message"] = "Welcome Message"
L["Welcome Messages"] = "Mensaje de Bienvenida"
--[[Translation missing --]]
L["What to do with Recount/Skada/TinyDPS reports in this channel."] = "What to do with Recount/Skada/TinyDPS reports in this channel."
--[[Translation missing --]]
L["What to show on the datatext."] = "What to show on the datatext."
--[[Translation missing --]]
L["When an ElvUI keyword is found it will show the message in a popup frame."] = "When an ElvUI keyword is found it will show the message in a popup frame."
--[[Translation missing --]]
L["When setting a variable the variable name must be the first parameter."] = "When setting a variable the variable name must be the first parameter."
--[[Translation missing --]]
L["When Talented Changes Talents"] = "When Talented Changes Talents"
--[[Translation missing --]]
L["Where AOE Taunts will be announced."] = "Where AOE Taunts will be announced."
--[[Translation missing --]]
L["Where taunts will be announced."] = "Where taunts will be announced."
--[[Translation missing --]]
L["Where the taunt fails will be announced."] = "Where the taunt fails will be announced."
L["Whisper"] = "Susurro"
--[[Translation missing --]]
L["Whisper Answer"] = "Whisper Answer"
L["Whisper Messages"] = "Mensajes de susurros"
L["Whisper Options"] = "Oopciones de susurros"
--[[Translation missing --]]
L["Whisper the response to the person.  Otherwise it will be answered in the same channel the request was sent."] = "Whisper the response to the person.  Otherwise it will be answered in the same channel the request was sent."
--[[Translation missing --]]
L["Whispers"] = "Whispers"
L["Who"] = "Quien"
--[[Translation missing --]]
L["Who is %s's main?"] = "Who is %s's main?"
--[[Translation missing --]]
L["Who Taunted"] = "Who Taunted"
--[[Translation missing --]]
L["Who to Congratulate?"] = "Who to Congratulate?"
--[[Translation missing --]]
L["Who Whispered Me"] = "Who Whispered Me"
--[[Translation missing --]]
L["Who: |cffffff00%s|r, Roll: |cffffff00%s|r, Min: |cffffff00%s|r, Max: |cffffff00%s|r"] = "Who: |cffffff00%s|r, Roll: |cffffff00%s|r, Min: |cffffff00%s|r, Max: |cffffff00%s|r"
--[[Translation missing --]]
L["Will automatically set your role based on your spec, when appropriate."] = "Will automatically set your role based on your spec, when appropriate."
--[[Translation missing --]]
L["Will save all data for large /who queries"] = "Will save all data for large /who queries"
--[[Translation missing --]]
L["Win Color"] = "Win Color"
--[[Translation missing --]]
L["Without a doubt."] = "Without a doubt."
L["XP Left To Level"] = "Experiencia restante para el nivel"
L["Year"] = "A\195\177o"
L["Yell"] = "Gritar"
--[[Translation missing --]]
L["Yell Chat"] = "Yell Chat"
--[[Translation missing --]]
L["Yes"] = "Yes"
--[[Translation missing --]]
L["Yes, definitely."] = "Yes, definitely."
--[[Translation missing --]]
L["You are missing %s%d|r pets."] = "You are missing %s%d|r pets."
--[[Translation missing --]]
L["You are running version |cff1784d1%s|r."] = "You are running version |cff1784d1%s|r."
--[[Translation missing --]]
L["You asked: %s"] = "You asked: %s"
--[[Translation missing --]]
L["You can only send a request once every %d seconds.  You last sent a request at %s."] = "You can only send a request once every %d seconds.  You last sent a request at %s."
--[[Translation missing --]]
L["You can use $gname tag in text. This will be replaced by your guild name."] = "You can use $gname tag in text. This will be replaced by your guild name."
--[[Translation missing --]]
L["You have %s%d (%d unique, %d duplicates)|r pets."] = "You have %s%d (%d unique, %d duplicates)|r pets."
--[[Translation missing --]]
L["You have %s%d|r duplicate pets."] = "You have %s%d|r duplicate pets."
--[[Translation missing --]]
L["You have %s%d|r mounts."] = "You have %s%d|r mounts."
--[[Translation missing --]]
L["You have %s%d|r unique pets."] = "You have %s%d|r unique pets."
--[[Translation missing --]]
L["You have |cff%s%d|r of %s, you need |cff%s%d|r more. |cff%s(%d/%d)|r"] = "You have |cff%s%d|r of %s, you need |cff%s%d|r more. |cff%s(%d/%d)|r"
--[[Translation missing --]]
L["You have |cff%s%d|r of %s."] = "You have |cff%s%d|r of %s."
--[[Translation missing --]]
L["You have |cff9382c9Chatter|r running, which is incompatible with this addon.  Please disable it."] = "You have |cff9382c9Chatter|r running, which is incompatible with this addon.  Please disable it."
--[[Translation missing --]]
L["You have |cff9382c9Prat-3.0|r running, which is incompatible with this addon.  Please disable it."] = "You have |cff9382c9Prat-3.0|r running, which is incompatible with this addon.  Please disable it."
--[[Translation missing --]]
L["You have already completed %s."] = "You have already completed %s."
--[[Translation missing --]]
L["You have met your quota of %s%s. |cff%s(%d/%d)|r"] = "You have met your quota of %s%s. |cff%s(%d/%d)|r"
--[[Translation missing --]]
L["You may rely on it."] = "You may rely on it."
--[[Translation missing --]]
L["You must provide a calculation or set a variable."] = "You must provide a calculation or set a variable."
--[[Translation missing --]]
L["You need %s%s%s%sto hit level %d."] = "You need %s%s%s%sto hit level %d."
--[[Translation missing --]]
L["You Need To Move"] = "You Need To Move"
--[[Translation missing --]]
L["Your Color"] = "Your Color"
L["Your version of %s is out of date.  Latest version is |cff1784d1%d|r."] = "Tu version de %s esta caducada. La ultima version es |cff1784d1%d|r."
--[[Translation missing --]]
L["Your Version: |cffffff00%d|r, Latest Version: |cffffff00%d|r"] = "Your Version: |cffffff00%d|r, Latest Version: |cffffff00%d|r"
--[[Translation missing --]]
L["Yours"] = "Yours"
--[[Translation missing --]]
L["Zone List"] = "Zone List"

