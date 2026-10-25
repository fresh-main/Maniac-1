advancement revoke @s only maniac:radio_use
execute unless score game_state global_data matches 1 run return 0
execute unless score radio_call_state global_data matches 0 run return run title @s actionbar {"text":"Вызов по рации уже был","color":"yellow"}
scoreboard players set radio_call_state global_data 1
scoreboard players set radio_call_timer global_data 30
title @a[team=peaceful] actionbar {"text":"[Рация] Вызов полиции...","color":"yellow"}
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.5
