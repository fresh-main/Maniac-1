execute if score boat_used global_data matches 1 run return run title @s actionbar {"text":"Лодка уже уплыла","color":"red"}
execute if score boat_seats global_data matches 4.. run return run title @s actionbar {"text":"Все места заняты","color":"yellow"}
execute if entity @s[tag=boat_rider] run return 0
execute if data entity @e[tag=boat_seat_4,distance=..4,limit=1,sort=nearest] Passengers[0] run return run title @s actionbar {"text":"Это место уже занято","color":"yellow"}
ride @s mount @e[tag=boat_seat_4,distance=..4,limit=1,sort=nearest]
tag @s add boat_rider
scoreboard players add boat_seats global_data 1
title @s actionbar {"text":"Вы заняли место в лодке","color":"green"}
