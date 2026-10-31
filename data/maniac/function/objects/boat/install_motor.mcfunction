execute unless items entity @s weapon.mainhand iron_ingot[custom_data={motor_part:"complete"}] run return run title @s actionbar {"text":"Чтобы установить мотор, возьмите собранный мотор в руку","color":"yellow"}
clear @s iron_ingot[custom_data={motor_part:"complete"}] 1
scoreboard players set boat_motor global_data 1
execute at @e[tag=escape_boat,limit=1] run summon minecraft:item_display ~ ~ ~ {Tags:["boat_motor_display"],item_display:"fixed",item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_model":"minecraft:motor_full"}},transformation:{translation:[0.0f,0.65f,-0.7f],scale:[0.8f,0.8f,0.8f]}}
ride @e[tag=boat_motor_display,limit=1,sort=nearest] mount @e[tag=escape_boat,limit=1]
title @s actionbar {"text":"Мотор установлен. Залейте 3 единицы топлива и нажмите по мотору ПКМ","color":"green"}
