# Вызвать в точке мастерской: execute positioned X Y Z run function maniac:objects/motor_table/spawn
kill @e[tag=motor_table_interaction]
kill @e[tag=motor_assembly_display]
kill @e[tag=motor_table_display]
scoreboard players set motor_stage global_data 0
summon item_display ~-.5 ~0.5 ~ {Tags:["motor_table_display"],item_display:"ground",Rotation:[0f,0f],item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_model":"minecraft:motor_table"}},transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],translation:[0f,0f,0f]},Passengers:[{id:"interaction",Tags:["motor_table_interaction"],width:2.0f,height:1.6f}]}
