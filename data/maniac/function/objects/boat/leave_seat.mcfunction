# Освобождение места после выхода игрока
execute if entity @s[tag=boat_seated] run scoreboard players remove boat_seats_occupied global_data 1
tag @s remove boat_seated
tag @s remove boat_rider
