# Посадка в ближайшее свободное место лодки
execute unless score boat_fuel global_data matches 3 run return run title @s actionbar {"text":"Сначала заправьте лодку","color":"yellow"}
execute if entity @s[tag=boat_seated] run return run title @s actionbar {"text":"Вы уже сидите в лодке","color":"yellow"}
execute if score boat_seats_occupied global_data matches 4.. run return run title @s actionbar {"text":"Все места заняты","color":"yellow"}

execute if entity @e[tag=boat_seat_1,distance=..0.9] if data entity @e[tag=boat_seat_1,distance=..0.9,limit=1] Passengers[0] run return run title @s actionbar {"text":"Это место уже занято","color":"yellow"}
execute if entity @e[tag=boat_seat_1,distance=..0.9] run ride @s mount @e[tag=boat_seat_1,distance=..0.9,limit=1,sort=nearest]
execute if entity @e[tag=boat_seat_1,distance=..0.9] run tag @s add boat_seated
execute if entity @e[tag=boat_seat_1,distance=..0.9] run tag @s add boat_rider
execute if entity @e[tag=boat_seat_1,distance=..0.9] run scoreboard players add boat_seats_occupied global_data 1
execute if entity @e[tag=boat_seat_1,distance=..0.9] run return run title @s actionbar {"text":"Вы заняли место в лодке","color":"green"}

execute if entity @e[tag=boat_seat_2,distance=..0.9] if data entity @e[tag=boat_seat_2,distance=..0.9,limit=1] Passengers[0] run return run title @s actionbar {"text":"Это место уже занято","color":"yellow"}
execute if entity @e[tag=boat_seat_2,distance=..0.9] run ride @s mount @e[tag=boat_seat_2,distance=..0.9,limit=1,sort=nearest]
execute if entity @e[tag=boat_seat_2,distance=..0.9] run tag @s add boat_seated
execute if entity @e[tag=boat_seat_2,distance=..0.9] run tag @s add boat_rider
execute if entity @e[tag=boat_seat_2,distance=..0.9] run scoreboard players add boat_seats_occupied global_data 1
execute if entity @e[tag=boat_seat_2,distance=..0.9] run return run title @s actionbar {"text":"Вы заняли место в лодке","color":"green"}

execute if entity @e[tag=boat_seat_3,distance=..0.9] if data entity @e[tag=boat_seat_3,distance=..0.9,limit=1] Passengers[0] run return run title @s actionbar {"text":"Это место уже занято","color":"yellow"}
execute if entity @e[tag=boat_seat_3,distance=..0.9] run ride @s mount @e[tag=boat_seat_3,distance=..0.9,limit=1,sort=nearest]
execute if entity @e[tag=boat_seat_3,distance=..0.9] run tag @s add boat_seated
execute if entity @e[tag=boat_seat_3,distance=..0.9] run tag @s add boat_rider
execute if entity @e[tag=boat_seat_3,distance=..0.9] run scoreboard players add boat_seats_occupied global_data 1
execute if entity @e[tag=boat_seat_3,distance=..0.9] run return run title @s actionbar {"text":"Вы заняли место в лодке","color":"green"}

execute if entity @e[tag=boat_seat_4,distance=..0.9] if data entity @e[tag=boat_seat_4,distance=..0.9,limit=1] Passengers[0] run return run title @s actionbar {"text":"Это место уже занято","color":"yellow"}
execute if entity @e[tag=boat_seat_4,distance=..0.9] run ride @s mount @e[tag=boat_seat_4,distance=..0.9,limit=1,sort=nearest]
execute if entity @e[tag=boat_seat_4,distance=..0.9] run tag @s add boat_seated
execute if entity @e[tag=boat_seat_4,distance=..0.9] run tag @s add boat_rider
execute if entity @e[tag=boat_seat_4,distance=..0.9] run scoreboard players add boat_seats_occupied global_data 1
execute if entity @e[tag=boat_seat_4,distance=..0.9] run title @s actionbar {"text":"Вы заняли место в лодке","color":"green"}
