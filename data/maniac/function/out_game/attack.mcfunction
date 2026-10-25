execute as @s[tag=maniac_count_interaction] on attacker run function maniac:out_game/interaction/message/maniac_count
execute as @s[tag=police_count_interaction] on attacker run function maniac:out_game/interaction/message/policeman_count
execute as @s[tag=medkit_count_interaction] on attacker run function maniac:out_game/interaction/message/medkits_per_player
execute as @s[tag=health_count_interaction] on attacker run function maniac:out_game/interaction/message/hp_count
execute as @s[tag=capacity_interaction] on attacker run function maniac:out_game/interaction/message/capacity
execute as @s[tag=game_time_interaction] on attacker run function maniac:out_game/interaction/message/game_timer
execute as @s[tag=hunt_time_interaction] on attacker run function maniac:out_game/interaction/message/maniac_timer
execute as @s[tag=police_time_interaction] on attacker run function maniac:out_game/interaction/message/police_timer

execute as @s[tag=roles_interaction] on attacker run function maniac:out_game/interaction/message/roles_switch
execute as @s[tag=light_interaction] on attacker run function maniac:out_game/interaction/message/light_switch
execute as @s[tag=infection_interaction] on attacker run function maniac:out_game/interaction/message/infection_switch
execute as @s[tag=camera_interaction] on attacker run function maniac:out_game/interaction/message/camera_switch
execute as @s[tag=safe_interaction] on attacker run function maniac:out_game/interaction/message/safe_zone_switch
execute as @s[tag=main_exit_interaction] on attacker run function maniac:out_game/interaction/message/escape_switch
execute as @s[tag=helicopter_interaction] on attacker run function maniac:out_game/interaction/message/escape_switch
execute as @s[tag=gate_interaction] on attacker run function maniac:out_game/interaction/message/escape_switch
execute as @s[tag=elevator_interaction] on attacker run function maniac:out_game/interaction/message/escape_switch
execute as @s[tag=survivor_stamina_interaction] on attacker run function maniac:out_game/interaction/message/stamina
execute as @s[tag=maniac_stamina_interaction] on attacker run function maniac:out_game/interaction/message/stamina
data remove entity @s attack