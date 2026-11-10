execute as @e[tag=falling_corpse,nbt={OnGround:1b}] at @s run function maniac:in_game/player/death/place_to_floor
execute as @e[type=interaction] if data entity @s interaction at @s run function maniac:in_game/interaction
execute if score game_state global_data matches 1 run function maniac:objects/boat/tick
execute if score game_state global_data matches 1 run function maniac:objects/truck/tick
execute if score game_state global_data matches 1 if score truck_moving global_data matches 0 run execute positioned -34 8 -40 as @a[distance=..1] run title @s actionbar [{"text":"Требуется заправка (","color":"yellow"},{"score":{"name":"truck_fuel","objective":"global_data"}},{"text":"/3)","color":"yellow"}]
execute if score game_state global_data matches 1 if score truck_fuel global_data matches 3 if score truck_moving global_data matches 0 as @e[tag=truck_crowbar_stage1] at @s run execute as @a[distance=..1] run title @s actionbar {"text":"Вставьте монтировку (ПКМ)","color":"yellow"}
execute if score game_state global_data matches 1 if score truck_fuel global_data matches 3 if score truck_moving global_data matches 0 as @e[tag=truck_crowbar_stage2] at @s run execute as @a[distance=..1] run title @s actionbar {"text":"Потяните монтировку, чтобы уехать (ПКМ)","color":"yellow"}
#execute as @a at @s at @e[tag=lamp,distance=..15] run playsound minecraft:custom.sounds.lamp player @s ~ ~ ~ 0.2 1 0
execute as @a run function maniac:in_game/player/tick_test
clear @a glass_bottle
execute if score @r[team=police] police_peaceful_kill matches 1 run scoreboard players set police_status global_data 4
