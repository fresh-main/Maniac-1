# Заправка грузовика
execute unless score truck_fuel global_data matches ..2 run return run title @s actionbar {"text":"Бак уже заполнен","color":"yellow"}
execute unless items entity @s weapon.mainhand minecraft:potion[minecraft:item_model="minecraft:kanistra"] run return run title @s actionbar {"text":"Возьмите канистру в руку","color":"yellow"}
clear @s minecraft:potion[minecraft:item_model="minecraft:kanistra"] 1
scoreboard players add truck_fuel global_data 1
playsound block.lava.extinguish player @s ~ ~ ~ 0.8 1.2
title @s actionbar [{"text":"Требуется заправка (","color":"yellow"},{"score":{"name":"truck_fuel","objective":"global_data"}},{"text":"/3)","color":"yellow"}]
