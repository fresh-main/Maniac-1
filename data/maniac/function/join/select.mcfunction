scoreboard players operation @s game_count = total game_count
scoreboard players operation @s game_health = player_max_hp config
team join Hub
spawnpoint @s -22 8 13 90
clear
effect clear
bossbar set timer players @a
attribute @s movement_speed base set 0.1
attribute @s jump_strength base set 0.42
attribute @s attack_speed base set 23
attribute @s attack_damage base set 0
scoreboard players set @s count_medkit_used 0
xp set @a 129 levels
xp set @s 1000 points
xp set @a 0 levels
tag @s remove spectating
scoreboard players set @s stamina 583
execute if score game_state global_data matches 0 run function maniac:join/out_game
execute if score game_state global_data matches 1 run function maniac:join/in_game