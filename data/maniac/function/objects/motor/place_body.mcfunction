execute unless items entity @s weapon.mainhand iron_ingot[custom_data={motor_part:"body"}] run return run title @s actionbar {"text":"Для начала добавьте корпус мотора","color":"yellow"}
clear @s iron_ingot[custom_data={motor_part:"body"}] 1
scoreboard players set motor_stage global_data 1
data modify storage efm motor_display_model set value "motor_body"
execute at @e[tag=motor_table_display,distance=..6,sort=nearest,limit=1] run function maniac:objects/motor/show_stage with storage efm
title @s actionbar {"text":"Корпус установлен. Добавьте деталь 1","color":"green"}
