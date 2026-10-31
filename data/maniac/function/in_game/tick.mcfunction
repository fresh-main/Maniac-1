execute as @e[tag=falling_corpse,nbt={OnGround:1b}] at @s run function maniac:in_game/player/death/place_to_floor
execute as @e[type=interaction] if data entity @s interaction at @s run function maniac:in_game/interaction
execute if score game_state global_data matches 1 run function maniac:objects/boat/tick
#execute as @a at @s at @e[tag=lamp,distance=..15] run playsound minecraft:custom.sounds.lamp player @s ~ ~ ~ 0.2 1 0
execute as @a run function maniac:in_game/player/tick_test
clear @a glass_bottle
execute if score @r[team=police] police_peaceful_kill matches 1 run scoreboard players set police_status global_data 4
