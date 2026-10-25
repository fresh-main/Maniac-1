execute unless items entity @s weapon.mainhand iron_ingot[custom_data={motor_part:"part_2"}] run return run title @s actionbar {"text":"Для следующего этапа добавьте деталь мотора 2","color":"yellow"}
clear @s iron_ingot[custom_data={motor_part:"part_2"}] 1
scoreboard players set motor_stage global_data 3
data modify storage efm motor_display_model set value "motor_2"
execute at @e[tag=motor_table_display,distance=..6,sort=nearest,limit=1] run function maniac:objects/motor/show_stage with storage efm
title @s actionbar {"text":"Установлена деталь 2. Добавьте деталь 3","color":"green"}
