# Заправка лодки канистрами
execute unless score boat_motor_installed global_data matches 1 run return 0
execute if score boat_fuel global_data matches 3.. run return run title @s actionbar {"text":"Лодка уже заправлена","color":"yellow"}
execute unless items entity @s weapon.mainhand minecraft:potion[minecraft:item_model="minecraft:kanistra"] run return run title @s actionbar {"text":"Возьмите канистру в руку","color":"yellow"}
clear @s minecraft:potion[minecraft:item_model="minecraft:kanistra"] 1
scoreboard players add boat_fuel global_data 1
playsound block.lava.extinguish player @s ~ ~ ~ 0.8 1.2
execute if score boat_fuel global_data matches 3 run title @s actionbar {"text":"Лодка заправлена. Садитесь в лодку (0/4)","color":"green"}
execute unless score boat_fuel global_data matches 3 run title @s actionbar [{"text":"Заправка (","color":"yellow"},{"score":{"name":"boat_fuel","objective":"global_data"}},{"text":"/3)","color":"yellow"}]
