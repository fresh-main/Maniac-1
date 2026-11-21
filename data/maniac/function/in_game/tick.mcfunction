execute as @e[tag=falling_corpse,nbt={OnGround:1b}] at @s run function maniac:in_game/player/death/place_to_floor
execute as @e[type=interaction] if data entity @s interaction at @s run function maniac:in_game/interaction
execute as @a[tag=l1_camera_view] run function maniac:objects/camera_pc/location_1/control
execute as @a[team=peaceful] if items entity @s weapon.offhand *[minecraft:custom_data~{maniac_glow_key:1b}] run function maniac:in_game/item_glow/press
execute as @a[team=peaceful] unless items entity @s weapon.offhand *[minecraft:custom_data~{maniac_glow_key:1b}] if items entity @s weapon.mainhand *[minecraft:custom_data~{maniac_glow_key:2b}] run function maniac:in_game/item_glow/press
execute as @a[team=peaceful] unless items entity @s weapon.mainhand *[minecraft:custom_data~{maniac_glow_key:1b}] if items entity @s weapon.mainhand * run item modify entity @s weapon.mainhand maniac:glow_main
execute as @a[team=peaceful] unless items entity @s weapon.offhand *[minecraft:custom_data~{maniac_glow_key:2b}] if items entity @s weapon.offhand * run item modify entity @s weapon.offhand maniac:glow_off
scoreboard players remove @a[team=peaceful,scores={item_glow_cd=1..}] item_glow_cd 1
scoreboard players remove @a[team=peaceful,scores={item_glow_time=1..}] item_glow_time 1
execute as @e[type=minecraft:item_display,tag=Item] if entity @a[team=peaceful,scores={item_glow_time=1..}] run data merge entity @s {Glowing:1b}
execute as @e[type=minecraft:item_display,tag=Item] unless entity @a[team=peaceful,scores={item_glow_time=1..}] run data merge entity @s {Glowing:0b}
execute if score game_state global_data matches 1 run function maniac:objects/boat/tick
execute if score game_state global_data matches 1 run function maniac:objects/truck/tick
execute if score game_state global_data matches 1 if score truck_moving global_data matches 0 run execute positioned -34 8 -40 as @a[distance=..1] run title @s actionbar [{"text":"Требуется заправка (","color":"yellow"},{"score":{"name":"truck_fuel","objective":"global_data"}},{"text":"/3)","color":"yellow"}]
execute if score game_state global_data matches 1 if score truck_fuel global_data matches 3 if score truck_moving global_data matches 0 as @e[tag=truck_crowbar_stage1] at @s run execute as @a[distance=..1] run title @s actionbar {"text":"Вставьте монтировку (ПКМ)","color":"yellow"}
execute if score game_state global_data matches 1 if score truck_fuel global_data matches 3 if score truck_moving global_data matches 0 as @e[tag=truck_crowbar_stage2] at @s run execute as @a[distance=..1] run title @s actionbar {"text":"Потяните монтировку, чтобы уехать (ПКМ)","color":"yellow"}
#execute as @a at @s at @e[tag=lamp,distance=..15] run playsound minecraft:custom.sounds.lamp player @s ~ ~ ~ 0.2 1 0
execute as @a run function maniac:in_game/player/tick_test
clear @a glass_bottle
execute if score @r[team=police] police_peaceful_kill matches 1 run scoreboard players set police_status global_data 4
execute if score radio_call_timer global_data matches 1.. run function maniac:objects/radio/call/tick
