# Первая стадия: вставка монтировки
execute unless items entity @s weapon.mainhand minecraft:tripwire_hook[minecraft:custom_data~{key:"монтировка"}] run return run title @s actionbar {"text":"Возьмите монтировку в руку","color":"yellow"}
execute unless score truck_fuel global_data matches 3 run return 0
execute at @e[tag=truck_crowbar_interaction,limit=1] run tag @e[tag=truck_crowbar_stage1,distance=..0.1,limit=1] remove truck_crowbar_stage1
execute at @e[tag=truck_crowbar_interaction,limit=1] run tag @e[tag=truck_crowbar_interaction,distance=..0.1,limit=1] add truck_crowbar_stage2
scoreboard players set truck_crowbar_stage global_data 1
# Вставленная монтировка с поворотом на 90 градусов по оси X
summon minecraft:item_display -36 8.625 -39 {Tags:["truck_crowbar_display"],item_display:"fixed",item:{id:"minecraft:tripwire_hook",count:1,components:{"minecraft:item_model":"minecraft:kluch_16"}},transformation:{translation:[0f,0f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
title @s actionbar {"text":"Монтировка вставлена","color":"green"}
