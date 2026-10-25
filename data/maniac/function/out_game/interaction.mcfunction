execute as @s[tag=discord_button] on target run function maniac:out_game/interaction/discord
execute as @s[tag=boosty_button] on target run function maniac:out_game/interaction/boosty
execute as @s[tag=tg_button] on target run function maniac:out_game/interaction/tg
execute as @s[tag=yt_button] on target run function maniac:out_game/interaction/youtube
execute as @s[tag=mcinside_button] on target run function maniac:out_game/interaction/mc_inside
execute as @s[tag=start_button] run function maniac:out_game/interaction/check_limit

execute as @s[tag=admin_setter] on target run function maniac:objects/admin_button/set_admin

execute as @s[tag=easy_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/fast_config/easy
execute as @s[tag=normal_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/fast_config/normal
execute as @s[tag=hard_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/fast_config/hard
execute as @s[tag=extrime_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/fast_config/extreme

execute as @s[tag=maniac1_int] if score maniac_count config matches 1.. on target run function maniac:objects/maniac_list/set_maniac {num:0}
execute as @s[tag=maniac2_int] if score maniac_count config matches 2.. on target run function maniac:objects/maniac_list/set_maniac {num:1}
execute as @s[tag=maniac3_int] if score maniac_count config matches 3.. on target run function maniac:objects/maniac_list/set_maniac {num:2}

execute as @s[tag=policeman_count_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:max_policeman_count, min_count:1, max_count:3, tag:policeman_count, scale:1}
execute as @s[tag=policeman_count_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:max_policeman_count, min_count:1, max_count:3, tag:policeman_count, scale:1}
execute as @s[tag=medkit_count_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:medkits_per_player, min_count:0, max_count:4, tag:medkit_count, scale:1}
execute as @s[tag=medkit_count_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:medkits_per_player, min_count:0, max_count:4, tag:medkit_count, scale:1}
execute as @s[tag=maniac_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:maniac_count, min_count:1, max_count:3, tag:maniac, scale:1}
execute as @s[tag=maniac_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:maniac_count, min_count:1, max_count:3, tag:maniac, scale:1}
execute as @s[tag=hp_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:player_max_hp, min_count:2, max_count:12, tag:hp, scale:2}
execute as @s[tag=hp_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:player_max_hp, min_count:2, max_count:12, tag:hp, scale:2}
execute as @s[tag=copacity_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:player_max_copacity, min_count:1, max_count:20, tag:copacity, scale:1}
execute as @s[tag=copacity_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:player_max_copacity, min_count:1, max_count:20, tag:copacity, scale:1}
execute as @s[tag=time_hunt_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:hunt_duration, min_count:10, max_count:600, tag:time_hunt, scale:10}
execute as @s[tag=time_hunt_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:hunt_duration, min_count:10, max_count:600, tag:time_hunt, scale:10}
execute as @s[tag=time_police_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:police_hunt_duration, min_count:10, max_count:600, tag:time_police, scale:10}
execute as @s[tag=time_police_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:police_hunt_duration, min_count:10, max_count:600, tag:time_police, scale:10}
execute as @s[tag=time_game_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:game_duration, min_count:5, max_count:30, tag:time_game, scale:1}
execute as @s[tag=time_game_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:game_duration, min_count:5, max_count:30, tag:time_game, scale:1}
execute as @s[tag=location_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:location_index, min_count:0, max_count:1, tag:location, scale:1}
execute as @s[tag=location_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:location_index, min_count:0, max_count:1, tag:location, scale:1}

execute as @s[tag=maniac_stamina_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:maniac.stamina.max, min_count:100, max_count:2000, tag:maniac_stamina, scale:25}
execute as @s[tag=maniac_stamina_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:maniac.stamina.max, min_count:100, max_count:2000, tag:maniac_stamina, scale:25}
execute as @s[tag=maniac_stamina_jump_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:maniac.stamina.jump, min_count:0, max_count:100, tag:maniac_stamina_jump, scale:5}
execute as @s[tag=maniac_stamina_jump_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:maniac.stamina.jump, min_count:0, max_count:100, tag:maniac_stamina_jump, scale:5}
execute as @s[tag=maniac_stamina_sprint_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:maniac.stamina.sprint, min_count:0, max_count:50, tag:maniac_stamina_sprint, scale:1}
execute as @s[tag=maniac_stamina_sprint_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:maniac.stamina.sprint, min_count:0, max_count:50, tag:maniac_stamina_sprint, scale:1}

execute as @s[tag=survivor_stamina_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:survivor.stamina.max, min_count:100, max_count:2000, tag:survivor_stamina, scale:25}
execute as @s[tag=survivor_stamina_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:survivor.stamina.max, min_count:100, max_count:2000, tag:survivor_stamina, scale:25}
execute as @s[tag=survivor_stamina_jump_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:survivor.stamina.jump, min_count:0, max_count:100, tag:survivor_stamina_jump, scale:5}
execute as @s[tag=survivor_stamina_jump_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:survivor.stamina.jump, min_count:0, max_count:100, tag:survivor_stamina_jump, scale:5}
execute as @s[tag=survivor_stamina_sprint_more_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/add {score:survivor.stamina.sprint, min_count:0, max_count:50, tag:survivor_stamina_sprint, scale:1}
execute as @s[tag=survivor_stamina_sprint_less_int] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/int/remove {score:survivor.stamina.sprint, min_count:0, max_count:50, tag:survivor_stamina_sprint, scale:1}

execute as @s[tag=game_time_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:game_time_switch, tag:time_game_interaction}

execute as @s[tag=roles_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:role_switch, tag:roles_interaction}
execute as @s[tag=light_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:light_switch, tag:light_interaction}
execute as @s[tag=infection_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:infection_switch, tag:infection_interaction}
execute as @s[tag=camera_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:camera_switch, tag:camera_interaction}
execute as @s[tag=safe_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:safe_switch, tag:safe_interaction}

execute as @s[tag=main_exit_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:main_exit_switch, tag:main_exit_interaction}
execute as @s[tag=elevator_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:elevator_switch, tag:elevator_interaction}
execute as @s[tag=gate_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:gate_switch, tag:gate_interaction}
execute as @s[tag=helicopter_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:helicopter_switch, tag:helicopter_interaction}

execute as @s[tag=maniac_stamina_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:maniac_stamina_switch, tag:maniac_stamina_interaction}
execute as @s[tag=survivor_stamina_interaction] if function maniac:out_game/tag_check run function maniac:out_game/interaction/config/boolean/switch {score:survivor_stamina_switch, tag:survivor_stamina_interaction}

data remove entity @s interaction