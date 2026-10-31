execute if score boat_used global_data matches 1 run return run title @s actionbar {"text":"Лодка уже уплыла","color":"red"}
execute unless score boat_motor global_data matches 1 run return run function maniac:objects/boat/install_motor
execute store result score #boat_fuel_added global_data run clear @s potion[potion_contents={potion:"water"},custom_name='{"text":"Топливо (1л.)","color":"yellow","italic":false}'] 1
execute if score #boat_fuel_added global_data matches 1.. run scoreboard players add boat_fuel global_data 1
execute if score boat_fuel global_data matches ..2 run return run title @s actionbar {"text":"В моторе топлива: ","color":"yellow","extra":[{"score":{"name":"boat_fuel","objective":"global_data"}},{"text":"/3. Добавьте топливо или нажмите снова при полном баке"}]}
execute unless score boat_fuel global_data matches 3.. run return run title @s actionbar {"text":"Залейте в мотор 3 единицы топлива","color":"yellow"}
execute unless score boat_seats global_data matches 1.. run return run title @s actionbar {"text":"Для побега хотя бы один игрок должен сидеть в лодке","color":"yellow"}
function maniac:objects/boat/escape
