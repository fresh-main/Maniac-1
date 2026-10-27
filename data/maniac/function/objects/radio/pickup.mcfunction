execute unless score radio_charge global_data matches 3.. run return 0
give @s spyglass[item_name='{"text":"Рация","color":"gold","italic":false}',item_model="radio",custom_data={item:"radio"}]
scoreboard players set radio_call_state global_data 0
kill @e[tag=radio_display]
title @s actionbar {"text":"Рация у вас. Нажмите ПКМ, чтобы вызвать полицию","color":"yellow"}
