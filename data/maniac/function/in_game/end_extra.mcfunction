kill @e[tag=corpse]
execute if score location_index config matches 1 run setblock -52 7 -187 minecraft:air
execute in minecraft:overworld run function maniac:objects/boat/cleanup
kill @e[tag=motor_table_interaction]
kill @e[tag=motor_table_display]
kill @e[tag=motor_assembly_display]
scoreboard players set motor_stage global_data 0
kill @e[tag=crowbar_hitbox]
kill @e[type=item]
execute as @e[tag=player_doll_model] run function maniac:objects/camera/remove_doll
tag @a remove spectating
tag @e remove break

gamemode adventure @a
team join Hub @a
tag @a remove just_spectator
clear @a
effect clear @a
effect give @a regeneration 1 127 true
effect give @a minecraft:saturation infinite 0 true

xp set @a 129 levels
xp set @a 1000 points
xp set @a 0 levels

function maniac:objects/maniac_list/reset

execute as @a run function maniac:in_game/player/stamina/dedebuff
execute as @a run attribute @s attack_speed base set 23
execute as @a run attribute @s attack_damage base set 0
execute as @a run attribute @s movement_speed base set 0.1
execute as @a run attribute @s jump_strength base set 0.42

tp @a -22 8 13 90 0
spawnpoint @a -22 8 13 90 

scoreboard players add total game_count 1
scoreboard players add @a game_count 1

scoreboard players set @a death 0
scoreboard players set game_state global_data 0
scoreboard players set @a count_medkit_used 0
scoreboard players set bossbar_timer global_data -1
scoreboard players set elevator1_timer global_data -1
scoreboard players set elevator2_timer global_data -1
scoreboard players set @a police_peaceful_kill 0

bossbar set timer visible false

data modify storage minecraft:efm phone_num set value {"text":"000000","font":"uniform","color":"#00FF00"}

scoreboard players set hunt_status global_data 0

title @a title {"text":"Игра приостановлена","color":"gray"}
