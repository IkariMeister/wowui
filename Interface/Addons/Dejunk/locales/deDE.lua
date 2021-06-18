-- Dejunk: deDE (German) localization file.

local AddonName = ...
local L = _G.LibStub('AceLocale-3.0'):NewLocale(AddonName, 'deDE')
if not L then return end

L["ADDED_ITEM_TO_LIST"] = "Gegenstand %s wurde zu %s hinzugefügt."
L["AUTO_OPEN_DESTROY_TOOLTIP"] = "Öffne automatisch das Zerstörenfenster, wenn zerstörbare Gegenstände gefunden werden."
L["AUTO_REPAIR_TEXT"] = "Automatisch reparieren"
L["AUTO_REPAIR_TOOLTIP"] = "Repariert automatisch Gegenstände, sobald ein Händlerfenster geöffnet wird. |n|nPriorisiert Reparatur auf Gildenkosten, falls verfügbar."
L["AUTO_SELL_TEXT"] = "Automatisch verkaufen"
L["AUTO_SELL_TOOLTIP"] = "Verkauft automatisch Plunder, sobald ein Händlerfenster geöffnet wird."
L["BELOW_PRICE_TEXT"] = "Unter Preis"
L["BINDINGS_ADD_TO_LIST_TEXT"] = "Zu %s hinzufügen"
L["BINDINGS_REMOVE_FROM_LIST_TEXT"] = "Von %s entfernen"
L["BY_CATEGORY_TEXT"] = "Nach Kategorie"
L["BY_QUALITY_TEXT"] = "Nach Qualiät"
L["BY_TYPE_TEXT"] = "Nach Art"
L["CANNOT_DESTROY_WHILE_SELLING"] = "Kann nicht zerstören, während Gegenstände verkauft werden."
L["CANNOT_OPEN_ITEMS"] = "Elemente können derzeit nicht geöffnet werden."
L["CANNOT_SELL_WHILE_DESTROYING"] = "Kann nicht verkauft werden, während Gegenstände zerstört werden."
L["CANNOT_SELL_WHILE_LISTS_UPDATING"] = "Kann nicht verkauft werden, während %s und %s aktualisiert werden."
L["CANNOT_SELL_WITHOUT_MERCHANT"] = "Kann nicht ohne Händler verkaufen."
L["CHAT_ENABLE_TOOLTIP"] = "Benachrichtigungen aktivieren"
L["CHAT_FRAME_CHANGED_MESSAGE"] = "Benachrichtigungen werden jetzt in diesem Chat-Frame angezeigt"
L["CHAT_FRAME_TOOLTIP"] = "Der Chat-Frame, der für Benachrichtigungen verwendet werden soll."
L["CHAT_REASON_TOOLTIP"] = "Aktiviert Benachrichtigungen, die den Grund angeben, warum ein Artikel verkauft oder zerstört wurde.|n|nNur gilt nur, wenn %s aktiviert ist."
L["CHAT_TEXT"] = "Chat"
L["CHAT_VERBOSE_TOOLTIP"] = "Aktivieren Sie zusätzliche Benachrichtigungen, wenn Sie Artikel verkaufen und zerstören."
L["CLASS_TEXT"] = "Klasse"
L["CMD_HELP_DESTROY"] = "Zerstörenfenster ein-/ausblenden."
L["CMD_HELP_OPEN"] = "Startet das Öffnen plünderbarer Gegenstände."
L["CMD_HELP_SELL"] = "Verkaufsfenster ein-/ausblenden"
L["CMD_HELP_TOGGLE"] = "Optionsfenster ein-/ausblenden"
L["COMMANDS_TEXT"] = "Befehle"
L["COMMON_TEXT"] = "Gewöhnlich"
L["COPY_TEXT"] = "Kopieren"
L["COULD_NOT_DESTROY_ITEM"] = "%s konnte nicht zerstört werden"
L["COULD_NOT_SELL_ITEM"] = "%s konnte nicht verkauft werden"
L["DELETE_PROFILE_POPUP"] = "Bist du sicher, dass du das Profil %s löschen willst?"
L["DELETE_TEXT"] = "Löschen"
L["DESTROY_ALL_TOOLTIP"] = "Zerstöre alle Gegenstände dieser Qualität"
L["DESTROY_BELOW_PRICE_TOOLTIP"] = "Zerstöre nur Plunder oder Stapel von Plunder, die weniger als einen festgelegten Preis wert sind."
L["DESTROY_EXCLUSIONS_HELP_TEXT"] = "Gegenstände auf dieser Liste werden niemals zerstört"
L["DESTROY_INCLUSIONS_HELP_TEXT"] = "Gegenstände auf dieser Liste werden immer zerstört"
L["DESTROY_NEXT_ITEM"] = "Zerstöre den nächsten Gegenstand"
L["DESTROY_PETS_ALREADY_COLLECTED_TEXT"] = "bereits gesammelte Haustiere"
L["DESTROY_PETS_ALREADY_COLLECTED_TOOLTIP"] = "Zerstöre Haustiere, von denen bereits mindestens eines gesammelt wurde.|n|nGilt nur für seelengebundene Haustiere, die nicht verkauft werden können."
L["DESTROY_TEXT"] = "Zerstören"
L["DESTROY_TOYS_ALREADY_COLLECTED_TEXT"] = "bereits gesammelte Spielzeuge"
L["DESTROY_TOYS_ALREADY_COLLECTED_TOOLTIP"] = "Zerstöre bereits gesammeltes Spielzeug.|n|nGilt nur für seelengebundenes Spielzeug, das nicht verkauft werden kann."
L["DESTROYED_ITEM_VERBOSE"] = "Zerstört: %s"
L["DESTROYED_ITEMS_VERBOSE"] = "Zerstört: %sx%s"
L["DESTROYING_IN_PROGRESS"] = "Die Zerstörung ist bereits im Gange."
L["DOES_NOT_APPLY_TO_QUALITY"] = "Gilt nicht für Gegenstände von %s Qualität"
L["ENABLE_TEXT"] = "Aktivieren"
L["EPIC_TEXT"] = "Episch"
L["EXCLUSIONS_TEXT"] = "Behalten"
L["EXPORT_HELPER_TEXT"] = "Wenn markiert, kopieren Sie die Exportzeichenfolge mit <Strg + C>."
L["EXPORT_PROFILE_TEXT"] = "Profil exportieren"
L["EXPORT_TEXT"] = "Exportieren"
L["FAILED_TO_PARSE_ITEM_ID"] = "Die Item-ID% s konnte nicht analysiert werden und ist möglicherweise nicht vorhanden."
L["FRAME_TEXT"] = "Fenster"
L["GENERAL_TEXT"] = "Allgemein"
L["GLOBAL_TEXT"] = "Global"
L["IGNORE_BATTLEPETS_TEXT"] = "Kampfhaustiere"
L["IGNORE_BATTLEPETS_TOOLTIP"] = "Ignoriere Kampf- und Haustiere."
L["IGNORE_BOE_TEXT"] = "Beim Ausrüsten gebunden"
L["IGNORE_BOE_TOOLTIP"] = "Ignoriert Items die Beim Ausrüsten gebunden werden"
L["IGNORE_CONSUMABLES_TEXT"] = "Verbrauchbare Gegenstände"
L["IGNORE_CONSUMABLES_TOOLTIP"] = "Ignoriert Verbrauchbare Gegenstände wie Lebensmittel und Tränke."
L["IGNORE_COSMETIC_TEXT"] = "Kometisch"
L["IGNORE_COSMETIC_TOOLTIP"] = "Ignoriert kosmetische und generische Rüstungen wie Wappenröcke, Hemden und in Schildhand geführte."
L["IGNORE_EQUIPMENT_SETS_TEXT"] = "Ausrüstungs-Sets"
L["IGNORE_EQUIPMENT_SETS_TOOLTIP"] = "Ignoriert Gegenstände die zu Ausrüstungs-Sets gehören."
L["IGNORE_GEMS_TEXT"] = "Edelsteine"
L["IGNORE_GLYPHS_TEXT"] = "Glyphen"
L["IGNORE_GLYPHS_TOOLTIP"] = "Ignoriert Glyphen."
L["IGNORE_ITEM_ENHANCEMENTS_TEXT"] = "Gegenstandsverbesserungen"
L["IGNORE_ITEM_ENHANCEMENTS_TOOLTIP"] = "Ignoriert Gegenstände, die zur Verbesserung von Waffen und Rüstungen verwendet werden."
L["IGNORE_MISCELLANEOUS_TEXT"] = "Verschiedenes"
L["IGNORE_MISCELLANEOUS_TOOLTIP"] = "Ignoriert verschiedene Gegenstände"
L["IGNORE_QUEST_ITEMS_TEXT"] = "Questgegenstände"
L["IGNORE_QUEST_ITEMS_TOOLTIP"] = "Ignoriert Questgegenstände"
L["IGNORE_READABLE_TEXT"] = "Lesbar"
L["IGNORE_READABLE_TOOLTIP"] = "Ignoriert Gegenstände, die gelesen werden können."
L["IGNORE_REAGENTS_TEXT"] = "Reagenzien"
L["IGNORE_REAGENTS_TOOLTIP"] = "Ignoriert Reagenzien."
L["IGNORE_RECIPES_TEXT"] = "Rezepte"
L["IGNORE_RECIPES_TOOLTIP"] = "Ignoriert handelbare Rezepte."
L["IGNORE_SOULBOUND_TEXT"] = "Seelengebunden"
L["IGNORE_SOULBOUND_TOOLTIP"] = "Ignoriert seelengebundene Gegenstände"
L["IGNORE_TEXT"] = "Ignorieren"
L["IGNORE_TRADE_GOODS_TEXT"] = "Handwerkswaren"
L["IGNORE_TRADE_GOODS_TOOLTIP"] = "Ignoriert Gegenstände, die sich auf Handwerksberufe beziehen."
L["IGNORE_TRADEABLE_TEXT"] = "Handelbar"
L["IGNORE_TRADEABLE_TOOLTIP"] = "Ignoriert Gegenstände, die mit Spielern gehandelt werden können, die ebenfalls zur Beute berechtigt waren."
L["IGNORING_ITEM_LOCKED"] = "Ignorieren: %s (%s)"
L["IGNORING_ITEMS_INCOMPLETE_TOOLTIPS"] = "Ignoriert Gegenstände mit unvollständigen Tooltip."
L["IMPORT_HELPER_TEXT"] = "Geben Sie durch ein Semikolon getrennte Item-IDs ein (z. B. 4983; 58907; 67410)."
L["IMPORT_PROFILE_HELPER_TEXT"] = "Verwenden Sie <Strg + V>, um eine Importzeichenfolge in das folgende Feld einzufügen."
L["IMPORT_PROFILE_TEXT"] = "Profil importieren"
L["IMPORT_TEXT"] = "Importieren"
L["INCLUSIONS_TEXT"] = "Verkaufen"
L["ITEM_ALREADY_ON_LIST"] = "%s ist bereits auf %s."
L["ITEM_CANNOT_BE_DESTROYED"] = "%s kann von Dejunk nicht zerstört werden."
L["ITEM_CANNOT_BE_SOLD"] = "%s kann von Dejunk nicht verkauft werden."
L["ITEM_NOT_ON_LIST"] = "%s ist nicht auf %s."
L["ITEM_TOOLTIP_TEXT"] = "Gegenstandstooltip"
L["ITEM_TOOLTIP_TOOLTIP"] = "Zeigen Sie im Tooltip eines Gegenstands eine Dejunk-Nachricht an, die angibt, ob dieser verkauft oder zerstört wird.|n|nDieser Tooltip gilt nur für Gegenstände in Ihren Taschen."
L["ITEM_WILL_BE_DESTROYED"] = "Dieser Gegenstand wird zerstört."
L["ITEM_WILL_BE_SOLD"] = "Dieser Gegenstand wird verkauft."
L["ITEM_WILL_NOT_BE_DESTROYED"] = "Dieser Gegenstand wird nicht zerstört."
L["ITEM_WILL_NOT_BE_SOLD"] = "Dieser Gegenstand wird nicht verkauft."
L["ITEM_WINDOW_CURRENT_ITEMS"] = "Aktuelle Gegenstände"
L["ITEM_WINDOW_DRAG_DROP_TO_INCLUDE"] = "Ziehen Sie einen Gegenstand per Drag & Drop, um es zu %s hinzuzufügen."
L["LEFT_CLICK"] = "Linksklick"
L["LIST_ADD_REMOVE_HELP_TEXT"] = "Um einen Gegenstand hinzuzufügen, legen Sie es in den Rahmen unten ab. Um einen Gegenstand zu entfernen, markieren Sie einen Eintrag und klicken Sie mit der rechten Maustaste."
L["LIST_TEXT"] = "Liste"
L["MAY_NOT_HAVE_DESTROYED_ITEM"] = "Möglicherweise wurde %s nicht zerstört."
L["MAY_NOT_HAVE_SOLD_ITEM"] = "Möglicherweise wurde %s nicht verkauft."
L["MERCHANT_CHECKBUTTON_TEXT"] = "Händler-Button"
L["MERCHANT_CHECKBUTTON_TOOLTIP"] = "Zeigen Sie eine Dejunk-Schaltfläche im Händlerfenster an."
L["MINIMAP_CHECKBUTTON_TEXT"] = "Minimapsymbol"
L["MINIMAP_CHECKBUTTON_TOOLTIP"] = "Zeigt an der Minimap ein Dejunk-Symbol an."
L["NAME_TEXT"] = "Name"
L["NO_CACHED_DESTROYABLE_ITEMS"] = "Es konnten kein zerstörbarer Plunder gefunden werden. Versuchen Sie es später erneut."
L["NO_CACHED_JUNK_ITEMS"] = "Es wurden keine Plunder im Zwischenspeicher gefunden. Versuche es später noch einmal."
L["NO_DESTROYABLE_ITEMS"] = "Keine Plunder zum Zerstören vorhanden."
L["NO_ITEMS_TEXT"] = "Keine Gegenstände."
L["NO_ITEMS_TO_OPEN"] = "Keine Gegenstände zum öffnen."
L["NO_JUNK_ITEMS"] = "Es gibt keinen zu verkaufenden Plunder."
L["ONLY_SELLING_CACHED"] = "Manche Gegenstände konnten nicht abgerufen werden. Es werden nur bereits zwischengespeicherte Schrottgegenstände verkauft."
L["OPENING_ITEM"] = "Öffnet: %s"
L["POOR_TEXT"] = "Schlecht"
L["PRICE_TEXT"] = "Preis"
L["PROFILE_ACTIVATED_TEXT"] = "Aktiviertes Profil %s"
L["PROFILE_COPIED_TEXT"] = "Kopiertes Profil %s"
L["PROFILE_COPY_HELP_TEXT"] = "Kopiert die Einstellungen eines vorhandenen Profils in das aktuelle Profil. Dadurch werden alle Einstellungen für das aktuelle Profil überschrieben."
L["PROFILE_CREATE_OR_SWITCH_HELP_TEXT"] = "Erstellen Sie ein neues Profil, indem Sie einen Namen in das Bearbeitungsfeld eingeben, oder wechseln Sie über das Dropdown-Menü zu einem vorhandenen Profil."
L["PROFILE_CREATE_OR_SWITCH_TEXT"] = "Erstellen oder wechseln"
L["PROFILE_DELETE_HELP_TEXT"] = "Löschen Sie ein vorhandenes Profil. Achtung!"
L["PROFILE_DELETED_TEXT"] = "Gelöschtes Profil %s"
L["PROFILE_EXISTING_PROFILES_TEXT"] = "Vorhandene Profile"
L["PROFILE_EXISTS_TEXT"] = "Profil %s existiert bereits."
L["PROFILE_INVALID_IMPORT_TEXT"] = "Ungültige Importzeichenfolge"
L["PROFILE_NAME_TEXT"] = "Profilname"
L["PROFILE_NEW_TEXT"] = "Neues Profil"
L["PROFILES_TEXT"] = "Profile"
L["QUALITY_TEXT"] = "Qualität"
L["RARE_TEXT"] = "Selten"
L["REASON_ITEM_IS_LOCKED_TEXT"] = "Gegenstand ist gesperrt"
L["REASON_ITEM_NOT_FILTERED_TEXT"] = "Kein passender Filter"
L["REASON_SELL_ITEM_TO_BE_DESTROYED"] = "Gegenstand, der sonst vernichtet werden soll"
L["REASON_TEXT"] = "Grund"
L["REMOVE_ALL_POPUP"] = "Möchten Sie wirklich alle Gegenstände aus %s entfernen?"
L["REMOVE_ALL_TEXT"] = "Alles entfernen"
L["REMOVED_ALL_FROM_LIST"] = "Alle Gegenstände von %s entfernt."
L["REMOVED_ITEM_FROM_LIST"] = "%s wurde von %s entfernt."
L["REPAIRED_ALL_ITEMS"] = "Alle Gegenstände wurden für %s repariert."
L["REPAIRED_ALL_ITEMS_GUILD"] = "Alle Gegenstände wurden für %s repariert (Gilde)."
L["REPAIRED_NO_ITEMS"] = "Nicht genug Geld für Reparatur."
L["REPAIRING_TEXT"] = "Reparieren"
L["RIGHT_CLICK"] = "Rechtsklick"
L["SAFE_MODE_MESSAGE"] = "Sicherer Modus aktiviert: Es werden nur %s Gegenstände verkauft."
L["SAFE_MODE_TEXT"] = "Sicherer Modus"
L["SAFE_MODE_TOOLTIP"] = "Verkauft nur bis zu %s Gegenstände gleichzeitig."
L["SELL_ALL_TOOLTIP"] = "Verkauft alle Gegenstände von dieser Qualität."
L["SELL_BELOW_PRICE_TOOLTIP"] = "Verkauft nur Plunder oder Stapel von Plunder, die weniger als einen festgelegten Preis wert sind."
L["SELL_EXCLUSIONS_HELP_TEXT"] = "Gegenstände auf dieser Liste werden niemals verkauft."
L["SELL_INCLUSIONS_HELP_TEXT"] = "Gegenstände auf dieser Liste werden immer verkauft."
L["SELL_NEXT_ITEM"] = "Nächsten Gegenstand verkaufen"
L["SELL_TEXT"] = "Verkaufen"
L["SELL_UNSUITABLE_TEXT"] = "Ungeeignete Ausrüstung"
L["SELL_UNSUITABLE_TOOLTIP"] = "Verkaufe alle Waffen, die für deine Klasse ungeeignet sind, und verkaufe alle Rüstungen, die nicht dem primären Rüstungstyp deiner Klasse entsprechen."
L["SELL_UNSUITABLE_TOOLTIP_CLASSIC"] = "Verkaufe alle Waffen und Rüstungen, die von deiner Klasse nicht benutzt oder trainiert werden können."
L["SELLING_IN_PROGRESS"] = "Der Verkauf ist bereits im Gange."
L["SHIFT_LEFT_CLICK"] = "Umschalt-Linksklick"
L["SHIFT_RIGHT_CLICK"] = "Umschalt-Rechtsklick"
L["SOLD_ITEM_VERBOSE"] = "Verkauft: %s."
L["SOLD_ITEMS_VERBOSE"] = "Verkauft: %s x %s"
L["SORT_BY_TEXT"] = "Sortieren nach"
L["START_SELLING_BUTTON_TEXT"] = "Verkauf gestartet"
L["STATUS_CONFIRMING_ITEMS_TEXT"] = "Gegenstände bestätigen ..."
L["STATUS_SELLING_ITEMS_TEXT"] = "Verkaufe Gegenstände ..."
L["STATUS_UPDATING_LISTS_TEXT"] = "Listen aktualisieren ..."
L["TOGGLE_DESTROY_FRAME"] = "Zerstörenfenster ein-/ausblenden"
L["TOGGLE_OPTIONS_FRAME"] = "Optionsfenster ein-/ausblenden"
L["TOGGLE_SELL_FRAME"] = "Verkaufenfenster ein-/ausblenden"
L["TRANSITIONED_DATABASE_MESSAGE"] = "Auf neue Datenbank umgestellt. Bestehende Einstellungen wurden zurückgesetzt, ausgenommen Listen."
L["UNCOMMON_TEXT"] = "Ungewöhnlich"
L["USAGE_TEXT"] = "Verwendung"
L["USE_GUILD_REPAIR_TEXT"] = "Gilde benutzen"
L["USE_GUILD_REPAIR_TOOLTIP"] = "Gildenreparaturen bevorzugen, wenn verfügbar"
L["VERBOSE_TEXT"] = "Ausführlich"
L["VERSION_TEXT"] = "Version"
