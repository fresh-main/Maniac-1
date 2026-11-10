# Установка полностью собранного мотора
execute if score boat_motor_installed global_data matches 1 run return 0
execute unless items entity @s weapon.mainhand iron_ingot[custom_data={motor_part:"complete"}] run return run title @s actionbar {"text":"Возьмите собранный мотор в руку","color":"yellow"}
clear @s iron_ingot[custom_data={motor_part:"complete"}] 1
scoreboard players set boat_motor_installed global_data 1
execute at @e[tag=boat_motor_interaction,limit=1,sort=nearest] run summon minecraft:item_display ~ ~ ~ {Tags:["boat_motor_display"],item_display:"fixed",item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_model":"minecraft:motor_full"}},transformation:{translation:[0.0f,0.0f,0.0f],scale:[0.8f,0.8f,0.8f]}}
title @s actionbar {"text":"Мотор установлен. Заправьте лодку (0/3)","color":"green"}
