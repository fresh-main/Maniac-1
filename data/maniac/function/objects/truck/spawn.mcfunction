# Создание грузовика и его hitbox-ов
kill @e[tag=truck_display]
kill @e[tag=truck_fuel_interaction]
kill @e[tag=truck_crowbar_interaction]
kill @e[tag=truck_crowbar_display]
summon minecraft:item_display -37 8 -40 {Tags:["truck_display"],item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"minecraft:truck"}},item_display:"ground"}
summon minecraft:interaction -35 8.625 -41 {Tags:["truck_fuel_interaction"],width:0.625f,height:0.625f}
summon minecraft:interaction -37 8.625 -40 {Tags:["truck_crowbar_interaction","truck_crowbar_stage1"],width:0.625f,height:0.625f}
scoreboard players set truck_fuel global_data 0
scoreboard players set truck_crowbar_stage global_data 0
scoreboard players set truck_engine_timer global_data 0
scoreboard players set truck_engine_starting global_data 0
scoreboard players set truck_moving global_data 0
scoreboard players set truck_moving_timer global_data 0
# Закрытая зона побега за воротами
fill -45 8 -40 -45 11 -38 minecraft:iron_bars
