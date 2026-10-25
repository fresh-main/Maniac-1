execute if score radio_call_state global_data matches 1.. run return run title @s actionbar {"text":"Рация уже используется","color":"yellow"}
execute if score radio_charge global_data matches ..2 run function maniac:objects/radio/charge
execute if score radio_charge global_data matches 3.. run function maniac:objects/radio/pickup