# Запуск двигателя длится 40 тиков (2 секунды)
execute as @e[tag=truck_display] run effect give @s minecraft:glowing 2 0 true
execute as @e[tag=truck_fuel_interaction] run effect give @s minecraft:glowing 2 0 true
execute as @e[tag=truck_crowbar_interaction] run effect give @s minecraft:glowing 2 0 true
execute if score truck_engine_starting global_data matches 1 run scoreboard players add truck_engine_timer global_data 1
execute if score truck_engine_starting global_data matches 1 if score truck_engine_timer global_data matches 40 at @e[tag=truck_crowbar_interaction,limit=1] as @a[team=peaceful,distance=..1.5] run function maniac:objects/truck/hit_player
execute if score truck_engine_starting global_data matches 1 if score truck_engine_timer global_data matches 40 at @e[tag=truck_crowbar_interaction,limit=1] as @a[team=peaceful,distance=..1.5] run tp @s ^ ^ ^2
execute if score truck_engine_starting global_data matches 1 if score truck_engine_timer global_data matches 40 run scoreboard players set truck_moving global_data 1
execute if score truck_engine_starting global_data matches 1 if score truck_engine_timer global_data matches 40 run scoreboard players set truck_moving_timer global_data 0
execute if score truck_engine_starting global_data matches 1 if score truck_engine_timer global_data matches 40 run kill @e[tag=truck_crowbar_interaction]
execute if score truck_engine_timer global_data matches 40 run scoreboard players set truck_engine_starting global_data 0
# Движение грузовика продолжается 400 тиков
execute unless score truck_moving global_data matches 1 run return 0
scoreboard players add truck_moving_timer global_data 1
execute if score truck_moving_timer global_data matches 1..399 as @e[tag=truck_display] at @s run tp @s ~-0.0925 ~ ~
# Через 5 секунд открываем ворота и выпускаем игроков из зоны побега
execute if score truck_moving_timer global_data matches 100 run fill -45 8 -40 -45 11 -38 minecraft:air
execute if score truck_moving_timer global_data matches 100 as @a[team=peaceful,x=-45,y=8,z=-40,dx=0,dy=3,dz=2] run function maniac:in_game/escape
execute if score truck_moving_timer global_data matches 400 run tp @e[tag=truck_display] -73 8 -39
execute if score truck_moving_timer global_data matches 400 run scoreboard players set truck_moving global_data 0
