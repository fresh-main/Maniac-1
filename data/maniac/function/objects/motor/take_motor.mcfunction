execute if data entity @s SelectedItem run return run title @s actionbar {"text":"Чтобы забрать мотор, нажмите пустой рукой","color":"yellow"}
give @s iron_ingot[item_name='{"text":"Собранный мотор","color":"gold","italic":false}',item_model="motor_full",custom_data={motor_part:"complete"}]
scoreboard players set motor_stage global_data 0
execute at @e[tag=motor_table_display,distance=..6,sort=nearest,limit=1] run kill @e[tag=motor_assembly_display,distance=..2]
title @s actionbar {"text":"Мотор у вас","color":"green"}
