execute if score @s item_glow_cd matches 1.. run return run function maniac:in_game/item_glow/cooldown
scoreboard players set @s item_glow_cd 600
scoreboard players set @s item_glow_time 200
title @s actionbar {"text":"Предметы подсвечены на 10 секунд","color":"yellow"}
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 1.4
