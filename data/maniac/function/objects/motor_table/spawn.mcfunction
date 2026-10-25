# Вызвать в точке мастерской: execute positioned X Y Z run function maniac:objects/motor_table/spawn
kill @e[tag=motor_table_interaction]
kill @e[tag=motor_assembly_display]
kill @e[tag=motor_table_display]
scoreboard players set motor_stage global_data 0
summon item_display ~ ~ ~ {Tags:["motor_table_display"],item_display:"ground",item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_model":"minecraft:motor_table"}},Passengers:[{id:"interaction",Tags:["motor_table_interaction"],width:1.0f,height:0.8f}]}
