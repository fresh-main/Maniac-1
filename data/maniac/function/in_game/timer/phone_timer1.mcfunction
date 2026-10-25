scoreboard players remove phone_timer1 global_data 1
title @s actionbar {"text": "Вызов...","color": "yellow"}
execute if score phone_timer1 global_data matches 50 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score phone_timer1 global_data matches 30 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score phone_timer1 global_data matches 10 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score phone_timer1 global_data matches 0 run function maniac:objects/phone/enter/number_select