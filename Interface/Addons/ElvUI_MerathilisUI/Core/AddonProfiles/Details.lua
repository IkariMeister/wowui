local MER, E, L, V, P, G = unpack(select(2, ...))

--Cache global variables
local twipe = table.wipe
local ReloadUI = ReloadUI

function MER:LoadDetailsProfile()
	--[[----------------------------------
	--	Details - Settings
	--]]----------------------------------
	if _detalhes_global then twipe(_detalhes_global) end
	_detalhes_global = {
		["__profiles"] = {
			["MerathilisUI"] = {
				["show_arena_role_icon"] = false,
				["capture_real"] = {
					["heal"] = true,
					["spellcast"] = true,
					["miscdata"] = true,
					["aura"] = true,
					["energy"] = true,
					["damage"] = true,
				},
				["row_fade_in"] = {
					"in", -- [1]
					0.2, -- [2]
				},
				["player_details_window"] = {
					["scale"] = 1,
					["skin"] = "ElvUI",
					["bar_texture"] = "Skyline",
				},
				["numerical_system"] = 1,
				["use_row_animations"] = true,
				["report_heal_links"] = false,
				["remove_realm_from_name"] = true,
				["minimum_overall_combat_time"] = 10,
				["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
				["report_to_who"] = "",
				["overall_flag"] = 16,
				["profile_save_pos"] = true,
				["tooltip"] = {
					["header_statusbar"] = {
						0.3, -- [1]
						0.3, -- [2]
						0.3, -- [3]
						0.8, -- [4]
						false, -- [5]
						false, -- [6]
						"WorldState Score", -- [7]
					},
					["fontcolor_right"] = {
						1, -- [1]
						0.7, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["line_height"] = 17,
					["tooltip_max_targets"] = 2,
					["icon_size"] = {
						["W"] = 17,
						["H"] = 17,
					},
					["tooltip_max_pets"] = 2,
					["anchor_relative"] = "top",
					["abbreviation"] = 2,
					["anchored_to"] = 1,
					["show_amount"] = false,
					["header_text_color"] = {
						1, -- [1]
						0.9176, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["fontsize"] = 11,
					["background"] = {
						0.196, -- [1]
						0.196, -- [2]
						0.196, -- [3]
						0.8, -- [4]
					},
					["submenu_wallpaper"] = true,
					["fontsize_title"] = 10,
					["fontcolor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["commands"] = {
					},
					["tooltip_max_abilities"] = 6,
					["fontface"] = "Expressway",
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0, -- [4]
					},
					["border_texture"] = "Blizzard Tooltip",
					["anchor_offset"] = {
						0, -- [1]
						0, -- [2]
					},
					["fontshadow"] = false,
					["menus_bg_texture"] = "Interface\\SPELLBOOK\\Spellbook-Page-1",
					["border_size"] = 16,
					["maximize_method"] = 1,
					["anchor_screen_pos"] = {
						507.7, -- [1]
						-350.5, -- [2]
					},
					["anchor_point"] = "bottom",
					["menus_bg_coords"] = {
						0.309777336120606, -- [1]
						0.924000015258789, -- [2]
						0.213000011444092, -- [3]
						0.279000015258789, -- [4]
					},
					["icon_border_texcoord"] = {
						["R"] = 0.921875,
						["L"] = 0.078125,
						["T"] = 0.078125,
						["B"] = 0.921875,
					},
					["menus_bg_color"] = {
						0.8, -- [1]
						0.8, -- [2]
						0.8, -- [3]
						0.2, -- [4]
					},
				},
				["ps_abbreviation"] = 3,
				["world_combat_is_trash"] = false,
				["update_speed"] = 0.300000011920929,
				["bookmark_text_size"] = 11,
				["animation_speed_mintravel"] = 0.45,
				["track_item_level"] = false,
				["windows_fade_in"] = {
					"in", -- [1]
					0.2, -- [2]
				},
				["instances_menu_click_to_open"] = true,
				["overall_clear_newchallenge"] = true,
				["time_type"] = 2,
				["data_cleanup_logout"] = false,
				["instances_disable_bar_highlight"] = false,
				["trash_concatenate"] = false,
				["color_by_arena_team"] = true,
				["animation_speed"] = 33,
				["disable_stretch_from_toolbar"] = false,
				["disable_lock_ungroup_buttons"] = true,
				["memory_ram"] = 64,
				["disable_window_groups"] = false,
				["instances_suppress_trash"] = 0,
				["options_window"] = {
					["scale"] = 1,
				},
				["animation_speed_maxtravel"] = 3,
				["use_battleground_server_parser"] = true,
				["default_bg_alpha"] = 0.5,
				["font_faces"] = {
					["menus"] = "Expressway",
				},
				["clear_ungrouped"] = true,
				["segments_amount"] = 12,
				["animate_scroll"] = false,
				["instances"] = {
					{
						["__pos"] = {
							["normal"] = {
								["y"] = -441.7948981585222,
								["x"] = 621.334977554377,
								["w"] = 231,
								["h"] = 101,
							},
							["solo"] = {
								["y"] = 2,
								["x"] = 1,
								["w"] = 300,
								["h"] = 200,
							},
						},
						["hide_in_combat_type"] = 1,
						["clickthrough_window"] = false,
						["menu_anchor"] = {
							13, -- [1]
							3, -- [2]
							["side"] = 2,
						},
						["bg_r"] = 0.517647058823529,
						["hide_out_of_combat"] = false,
						["color_buttons"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["toolbar_icon_file"] = "Interface\\AddOns\\Details\\images\\toolbar_icons",
						["skin_custom"] = "",
						["fontstrings_width"] = 35,
						["tooltip"] = {
							["n_abilities"] = 3,
							["n_enemies"] = 3,
						},
						["switch_all_roles_in_combat"] = false,
						["clickthrough_toolbaricons"] = false,
						["attribute_text"] = {
							["enabled"] = false,
							["shadow"] = true,
							["side"] = 1,
							["text_size"] = 9,
							["custom_text"] = "{name}",
							["text_face"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\Expressway.ttf",
							["anchor"] = {
								0, -- [1]
								4, -- [2]
							},
							["show_timer"] = true,
							["enable_custom_text"] = false,
							["text_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
						},
						["ignore_mass_showhide"] = false,
						["switch_all_roles_after_wipe"] = false,
						["menu_icons"] = {
							true, -- [1]
							true, -- [2]
							true, -- [3]
							true, -- [4]
							true, -- [5]
							false, -- [6]
							["space"] = -3,
							["shadow"] = true,
						},
						["desaturated_menu"] = true,
						["micro_displays_side"] = 1,
						["window_scale"] = 0.990000009536743,
						["hide_icon"] = true,
						["toolbar_side"] = 1,
						["bg_g"] = 0.517647058823529,
						["menu_icons_alpha"] = 0.5,
						["bg_b"] = 0.517647058823529,
						["switch_healer_in_combat"] = false,
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0, -- [4]
						},
						["hide_on_context"] = {
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [1]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [2]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [3]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [4]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [5]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [6]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [7]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [8]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [9]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [10]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [11]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [12]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [13]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [14]
							{
								["enabled"] = false,
								["inverse"] = false,
								["value"] = 100,
							}, -- [15]
						},
						["skin"] = "ElvUI Style II",
						["following"] = {
							["enabled"] = true,
							["bar_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
							["text_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
						},
						["switch_healer"] = false,
						["fontstrings_text2_anchor"] = 70,
						["__snapV"] = false,
						["__snapH"] = false,
						["StatusBarSaved"] = {
							["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
							["right"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
							["options"] = {
								["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
									["isHidden"] = false,
									["timeType"] = 1,
									["textYMod"] = 1,
									["segmentType"] = 2,
									["textXMod"] = 20,
									["textFace"] = "Expressway",
									["textAlign"] = 1,
									["textSize"] = 11,
									["textColor"] = {
										0.52549, -- [1]
										0.52549, -- [2]
										0.52549, -- [3]
										1, -- [4]
									},
								},
								["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
									["isHidden"] = true,
									["segmentType"] = 2,
									["textFace"] = "Expressway",
									["textColor"] = {
										0.52549, -- [1]
										0.52549, -- [2]
										0.52549, -- [3]
										1, -- [4]
									},
									["textAlign"] = 3,
									["timeType"] = 1,
									["textSize"] = 11,
									["textYMod"] = 1,
								},
								["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
									["segmentType"] = 2,
									["textFace"] = "Expressway",
									["textYMod"] = 1,
									["timeType"] = 1,
									["textAlign"] = 2,
									["textSize"] = 11,
									["textColor"] = {
										0.52549, -- [1]
										0.52549, -- [2]
										0.52549, -- [3]
										1, -- [4]
									},
								},
							},
							["left"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						},
						["grab_on_top"] = true,
						["__was_opened"] = true,
						["instance_button_anchor"] = {
							-27, -- [1]
							1, -- [2]
						},
						["version"] = 3,
						["fontstrings_text4_anchor"] = 0,
						["__locked"] = true,
						["menu_alpha"] = {
							["enabled"] = false,
							["onleave"] = 1,
							["ignorebars"] = false,
							["iconstoo"] = true,
							["onenter"] = 1,
						},
						["switch_damager"] = false,
						["row_show_animation"] = {
							["anim"] = "Fade",
							["options"] = {
							},
						},
						["fontstrings_text3_anchor"] = 35,
						["strata"] = "MEDIUM",
						["clickthrough_incombatonly"] = true,
						["__snap"] = {
						},
						["stretch_button_side"] = 1,
						["hide_in_combat_alpha"] = 0,
						["row_info"] = {
							["textR_outline"] = true,
							["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal_alpha",
							["textL_outline"] = true,
							["textR_outline_small"] = false,
							["textR_show_data"] = {
								true, -- [1]
								true, -- [2]
								true, -- [3]
							},
							["textL_enable_custom_text"] = false,
							["fixed_text_color"] = {
								0.905882352941177, -- [1]
								0.905882352941177, -- [2]
								0.905882352941177, -- [3]
								1, -- [4]
							},
							["space"] = {
								["right_noborder"] = -3,
								["left"] = 1,
								["left_noborder"] = 1,
								["between"] = 3,
								["right"] = -3,
							},
							["texture_background_class_color"] = false,
							["textL_outline_small_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["font_face_file"] = "Interface\\AddOns\\ElvUI\\Media\\Fonts\\Expressway.ttf",
							["backdrop"] = {
								["enabled"] = false,
								["texture"] = "Details BarBorder 1",
								["color"] = {
									0, -- [1]
									0, -- [2]
									0, -- [3]
									1, -- [4]
								},
								["size"] = 1,
							},
							["models"] = {
								["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
								["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
								["upper_alpha"] = 0.5,
								["lower_enabled"] = false,
								["lower_alpha"] = 0.1,
								["upper_enabled"] = false,
							},
							["textL_translit_text"] = false,
							["height"] = 21,
							["texture_file"] = "Interface\\AddOns\\ElvUI_MerathilisUI\\media\\textures\\lyn1.tga",
							["texture_custom_file"] = "Interface\\",
							["texture_background_file"] = "Interface\\AddOns\\ElvUI_MerathilisUI\\media\\textures\\Empty.tga",
							["icon_file"] = "Interface\\AddOns\\ElvUI_MerathilisUI\\Media\\Textures\\mUI-details.tga",
							["icon_grayscale"] = false,
							["font_size"] = 12,
							["use_spec_icons"] = false,
							["textR_enable_custom_text"] = true,
							["fixed_texture_background_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.295484036207199, -- [4]
							},
							["fixed_texture_color"] = {
								0.862745098039216, -- [1]
								0.862745098039216, -- [2]
								0.862745098039216, -- [3]
								1, -- [4]
							},
							["textL_show_number"] = false,
							["percent_type"] = 1,
							["textL_outline_small"] = false,
							["textR_custom_text"] = "{data1} ({data2})",
							["texture"] = "Lyn1",
							["texture_custom"] = "",
							["start_after_icon"] = true,
							["textL_class_colors"] = false,
							["alpha"] = 1,
							["textR_class_colors"] = false,
							["texture_background"] = "MerathilisEmpty",
							["textR_outline_small_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["no_icon"] = false,
							["icon_offset"] = {
								0, -- [1]
								0, -- [2]
							},
							["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
							["font_face"] = "Expressway",
							["texture_class_colors"] = true,
							["textL_custom_text"] = "{data1}. {data3}",
							["fast_ps_update"] = true,
							["textR_separator"] = ",",
							["textR_bracket"] = "(",
						},
						["show_statusbar"] = false,
						["libwindow"] = {
							["y"] = 48.21003662774092,
							["x"] = -224.3199592513265,
							["point"] = "BOTTOMRIGHT",
							["scale"] = 0.9900000095367432,
						},
						["statusbar_info"] = {
							["alpha"] = 0,
							["overlay"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
						},
						["backdrop_texture"] = "None",
						["bars_grow_direction"] = 1,
						["auto_hide_menu"] = {
							["left"] = false,
							["right"] = false,
						},
						["bg_alpha"] = 0,
						["switch_tank_in_combat"] = false,
						["switch_damager_in_combat"] = false,
						["bars_inverted"] = false,
						["bars_sort_direction"] = 1,
						["auto_current"] = true,
						["icon_desaturated"] = false,
						["menu_anchor_down"] = {
							16, -- [1]
							-2, -- [2]
						},
						["clickthrough_rows"] = false,
						["hide_in_combat"] = false,
						["posicao"] = {
							["normal"] = {
								["y"] = -441.7948981585222,
								["x"] = 621.334977554377,
								["w"] = 231,
								["h"] = 101,
							},
							["solo"] = {
								["y"] = 2,
								["x"] = 1,
								["w"] = 300,
								["h"] = 200,
							},
						},
						["switch_tank"] = false,
						["plugins_grow_direction"] = 2,
						["wallpaper"] = {
							["enabled"] = false,
							["width"] = 265.999979475717,
							["texcoord"] = {
								0.0480000019073486, -- [1]
								0.298000011444092, -- [2]
								0.630999984741211, -- [3]
								0.755999984741211, -- [4]
							},
							["overlay"] = {
								0.999997794628143, -- [1]
								0.999997794628143, -- [2]
								0.999997794628143, -- [3]
								0.799998223781586, -- [4]
							},
							["anchor"] = "all",
							["height"] = 226.000007591173,
							["alpha"] = 0.800000071525574,
							["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
						},
						["total_bar"] = {
							["enabled"] = false,
							["only_in_group"] = true,
							["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
						},
						["show_sidebars"] = false,
						["micro_displays_locked"] = true,
						["use_multi_fontstrings"] = false,
						["menu_icons_size"] = 1,
					}, -- [1]
				},
				["report_lines"] = 5,
				["pvp_as_group"] = true,
				["windows_fade_out"] = {
					"out", -- [1]
					0.2, -- [2]
				},
				["skin"] = "WoW Interface",
				["override_spellids"] = true,
				["death_tooltip_width"] = 350,
				["force_activity_time_pvp"] = true,
				["instances_no_libwindow"] = false,
				["overall_clear_logout"] = false,
				["minimum_combat_time"] = 5,
				["chat_tab_embed"] = {
					["enabled"] = true,
					["y_offset"] = 0,
					["x_offset"] = 0,
					["w1_pos"] = {
						["y"] = 5.30014763215718,
						["h"] = 110.000007629395,
						["point"] = "BOTTOMRIGHT",
						["y_legacy"] = -480.249790321906,
						["x_legacy"] = 660.620163157818,
						["pos_table"] = true,
						["w"] = 273.999908447266,
						["x"] = -163.749771900271,
					},
					["tab_name"] = "",
					["single_window"] = false,
				},
				["cloud_capture"] = true,
				["damage_taken_everything"] = false,
				["scroll_speed"] = 2,
				["new_window_size"] = {
					["height"] = 130,
					["width"] = 320,
				},
				["memory_threshold"] = 3,
				["deadlog_events"] = 32,
				["default_bg_color"] = 0.0941,
				["close_shields"] = false,
				["class_coords"] = {
					["HUNTER"] = {
						0, -- [1]
						0.25, -- [2]
						0.25, -- [3]
						0.5, -- [4]
					},
					["WARRIOR"] = {
						0, -- [1]
						0.25, -- [2]
						0, -- [3]
						0.25, -- [4]
					},
					["SHAMAN"] = {
						0.25, -- [1]
						0.49609375, -- [2]
						0.25, -- [3]
						0.5, -- [4]
					},
					["MAGE"] = {
						0.25, -- [1]
						0.49609375, -- [2]
						0, -- [3]
						0.25, -- [4]
					},
					["PET"] = {
						0.25, -- [1]
						0.49609375, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["DRUID"] = {
						0.7421875, -- [1]
						0.98828125, -- [2]
						0, -- [3]
						0.25, -- [4]
					},
					["MONK"] = {
						0.5, -- [1]
						0.73828125, -- [2]
						0.5, -- [3]
						0.75, -- [4]
					},
					["DEATHKNIGHT"] = {
						0.25, -- [1]
						0.5, -- [2]
						0.5, -- [3]
						0.75, -- [4]
					},
					["ENEMY"] = {
						0, -- [1]
						0.25, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["UNKNOW"] = {
						0.5, -- [1]
						0.75, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["PRIEST"] = {
						0.49609375, -- [1]
						0.7421875, -- [2]
						0.25, -- [3]
						0.5, -- [4]
					},
					["UNGROUPPLAYER"] = {
						0.5, -- [1]
						0.75, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["Alliance"] = {
						0.49609375, -- [1]
						0.7421875, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["WARLOCK"] = {
						0.7421875, -- [1]
						0.98828125, -- [2]
						0.25, -- [3]
						0.5, -- [4]
					},
					["DEMONHUNTER"] = {
						0.73828126, -- [1]
						1, -- [2]
						0.5, -- [3]
						0.75, -- [4]
					},
					["Horde"] = {
						0.7421875, -- [1]
						0.98828125, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
					["PALADIN"] = {
						0, -- [1]
						0.25, -- [2]
						0.5, -- [3]
						0.75, -- [4]
					},
					["ROGUE"] = {
						0.49609375, -- [1]
						0.7421875, -- [2]
						0, -- [3]
						0.25, -- [4]
					},
					["MONSTER"] = {
						0, -- [1]
						0.25, -- [2]
						0.75, -- [3]
						1, -- [4]
					},
				},
				["numerical_system_symbols"] = "auto",
				["disable_alldisplays_window"] = true,
				["standard_skin"] = false,
				["trash_auto_remove"] = true,
				["class_colors"] = {
					["HUNTER"] = {
						0.67, -- [1]
						0.83, -- [2]
						0.45, -- [3]
					},
					["WARRIOR"] = {
						0.78, -- [1]
						0.61, -- [2]
						0.43, -- [3]
					},
					["PALADIN"] = {
						0.96, -- [1]
						0.55, -- [2]
						0.73, -- [3]
					},
					["MAGE"] = {
						0.41, -- [1]
						0.8, -- [2]
						0.94, -- [3]
					},
					["ARENA_YELLOW"] = {
						0.9, -- [1]
						0.9, -- [2]
						0, -- [3]
					},
					["UNGROUPPLAYER"] = {
						0.4, -- [1]
						0.4, -- [2]
						0.4, -- [3]
					},
					["DRUID"] = {
						1, -- [1]
						0.49, -- [2]
						0.04, -- [3]
					},
					["MONK"] = {
						0, -- [1]
						1, -- [2]
						0.59, -- [3]
					},
					["DEATHKNIGHT"] = {
						0.77, -- [1]
						0.12, -- [2]
						0.23, -- [3]
					},
					["ENEMY"] = {
						0.94117, -- [1]
						0, -- [2]
						0.0196, -- [3]
						1, -- [4]
					},
					["UNKNOW"] = {
						0.2, -- [1]
						0.2, -- [2]
						0.2, -- [3]
					},
					["PRIEST"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
					},
					["SHAMAN"] = {
						0, -- [1]
						0.44, -- [2]
						0.87, -- [3]
					},
					["ROGUE"] = {
						1, -- [1]
						0.96, -- [2]
						0.41, -- [3]
					},
					["WARLOCK"] = {
						0.58, -- [1]
						0.51, -- [2]
						0.79, -- [3]
					},
					["DEMONHUNTER"] = {
						0.64, -- [1]
						0.19, -- [2]
						0.79, -- [3]
					},
					["version"] = 1,
					["NEUTRAL"] = {
						1, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["PET"] = {
						0.3, -- [1]
						0.4, -- [2]
						0.5, -- [3]
					},
					["ARENA_GREEN"] = {
						0.1, -- [1]
						0.85, -- [2]
						0.1, -- [3]
					},
				},
				["hotcorner_topleft"] = {
					["hide"] = false,
				},
				["clear_graphic"] = true,
				["total_abbreviation"] = 2,
				["animation_speed_triggertravel"] = 5,
				["options_group_edit"] = true,
				["broadcaster_enabled"] = false,
				["minimap"] = {
					["onclick_what_todo"] = 1,
					["radius"] = 160,
					["hide"] = true,
					["minimapPos"] = 220,
					["text_format"] = 3,
					["text_type"] = 1,
				},
				["instances_amount"] = 1,
				["max_window_size"] = {
					["height"] = 450,
					["width"] = 480,
				},
				["time_type_original"] = 2,
				["only_pvp_frags"] = false,
				["disable_stretch_button"] = true,
				["use_scroll"] = false,
				["segments_amount_to_save"] = 5,
				["segments_auto_erase"] = 1,
				["segments_panic_mode"] = false,
				["window_clamp"] = {
					-8, -- [1]
					0, -- [2]
					21, -- [3]
					-14, -- [4]
				},
				["overall_clear_newboss"] = true,
				["row_fade_out"] = {
					"out", -- [1]
					0.2, -- [2]
				},
				["font_sizes"] = {
					["menus"] = 10.1481132507324,
				},
				["class_specs_coords"] = {
					[62] = {
						0.251953125, -- [1]
						0.375, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[63] = {
						0.375, -- [1]
						0.5, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[250] = {
						0, -- [1]
						0.125, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[251] = {
						0.125, -- [1]
						0.25, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[252] = {
						0.25, -- [1]
						0.375, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[253] = {
						0.875, -- [1]
						1, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[254] = {
						0, -- [1]
						0.125, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[255] = {
						0.125, -- [1]
						0.25, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[66] = {
						0.125, -- [1]
						0.25, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[257] = {
						0.5, -- [1]
						0.625, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[258] = {
						0.6328125, -- [1]
						0.75, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[259] = {
						0.75, -- [1]
						0.875, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[260] = {
						0.875, -- [1]
						1, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[577] = {
						0.25, -- [1]
						0.375, -- [2]
						0.5, -- [3]
						0.625, -- [4]
					},
					[262] = {
						0.125, -- [1]
						0.25, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[581] = {
						0.375, -- [1]
						0.5, -- [2]
						0.5, -- [3]
						0.625, -- [4]
					},
					[264] = {
						0.375, -- [1]
						0.5, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[265] = {
						0.5, -- [1]
						0.625, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[266] = {
						0.625, -- [1]
						0.75, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[267] = {
						0.75, -- [1]
						0.875, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[268] = {
						0.625, -- [1]
						0.75, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[269] = {
						0.875, -- [1]
						1, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[270] = {
						0.75, -- [1]
						0.875, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[70] = {
						0.251953125, -- [1]
						0.375, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[102] = {
						0.375, -- [1]
						0.5, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[71] = {
						0.875, -- [1]
						1, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[103] = {
						0.5, -- [1]
						0.625, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[72] = {
						0, -- [1]
						0.125, -- [2]
						0.5, -- [3]
						0.625, -- [4]
					},
					[104] = {
						0.625, -- [1]
						0.75, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[73] = {
						0.125, -- [1]
						0.25, -- [2]
						0.5, -- [3]
						0.625, -- [4]
					},
					[64] = {
						0.5, -- [1]
						0.625, -- [2]
						0.125, -- [3]
						0.25, -- [4]
					},
					[105] = {
						0.75, -- [1]
						0.875, -- [2]
						0, -- [3]
						0.125, -- [4]
					},
					[65] = {
						0, -- [1]
						0.125, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[256] = {
						0.375, -- [1]
						0.5, -- [2]
						0.25, -- [3]
						0.375, -- [4]
					},
					[261] = {
						0, -- [1]
						0.125, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
					[263] = {
						0.25, -- [1]
						0.375, -- [2]
						0.375, -- [3]
						0.5, -- [4]
					},
				},
				["streamer_config"] = {
					["faster_updates"] = false,
					["quick_detection"] = false,
					["reset_spec_cache"] = false,
					["no_alerts"] = false,
					["disable_mythic_dungeon"] = false,
					["use_animation_accel"] = true,
				},
				["report_schema"] = 1,
				["instances_segments_locked"] = true,
				["all_players_are_group"] = false,
				["disable_reset_button"] = false,
				["data_broker_text"] = "",
				["current_dps_meter"] = {
					["enabled"] = false,
					["font_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["arena_enabled"] = true,
					["font_shadow"] = "NONE",
					["font_size"] = 18,
					["mythic_dungeon_enabled"] = true,
					["sample_size"] = 5,
					["font_face"] = "Friz Quadrata TT",
					["frame"] = {
						["show_title"] = false,
						["strata"] = "MEDIUM",
						["backdrop_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.2, -- [4]
						},
						["locked"] = false,
						["height"] = 65,
						["width"] = 220,
					},
					["update_interval"] = 0.3,
					["options_frame"] = {
					},
				},
				["event_tracker"] = {
					["enabled"] = false,
					["font_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["line_height"] = 16,
					["line_color"] = {
						0.1, -- [1]
						0.1, -- [2]
						0.1, -- [3]
						0.3, -- [4]
					},
					["font_shadow"] = "NONE",
					["font_size"] = 10,
					["font_face"] = "Friz Quadrata TT",
					["frame"] = {
						["show_title"] = true,
						["strata"] = "MEDIUM",
						["backdrop_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.2, -- [4]
						},
						["locked"] = false,
						["height"] = 300,
						["width"] = 250,
					},
					["line_texture"] = "Details Serenity",
					["options_frame"] = {
					},
				},
				["deadlog_limit"] = 16,
				["deny_score_messages"] = false,
			},
		},
	}

	_detalhes:ApplyProfile('MerathilisUI')
end

E.PopupDialogs["MUI_INSTALL_DETAILS_LAYOUT"] = {
	text = L["MUI_INSTALL_SETTINGS_LAYOUT_DETAILS"],
	OnAccept = function() MER:LoadDetailsProfile(); ReloadUI() end,
	button1 = L["Details Layout"],
}
