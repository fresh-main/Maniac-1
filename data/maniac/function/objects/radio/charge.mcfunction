execute unless items entity @s weapon.mainhand redstone[custom_data={item:"батарейка"}] run return run title @s actionbar {"text":"Для зарядки нужна батарейка в руке","color":"yellow"}
clear @s redstone[custom_data={item:"батарейка"}] 1
scoreboard players add radio_charge global_data 1
playsound minecraft:block.note_block.pling player @a ~ ~ ~ 1 1.2
execute if score radio_charge global_data matches 1 run title @s actionbar {"text":"Рация: батарейка 1/3","color":"yellow"}
execute if score radio_charge global_data matches 2 run title @s actionbar {"text":"Рация: батарейка 2/3","color":"yellow"}
execute if score radio_charge global_data matches 3 run title @s actionbar {"text":"Рация заряжена","color":"green"}
