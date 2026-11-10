# Отплытие лодки после полной посадки
execute if score boat_used global_data matches 1 run return 0
execute unless score boat_motor_installed global_data matches 1 run return run title @s actionbar {"text":"Сначала установите мотор","color":"yellow"}
execute unless score boat_fuel global_data matches 3 run return run title @s actionbar {"text":"Сначала заправьте лодку","color":"yellow"}
execute unless score boat_seats_occupied global_data matches 4 run return run title @s actionbar {"text":"В лодке должны быть все 4 игрока","color":"yellow"}
scoreboard players set boat_escape_ready global_data 1
scoreboard players set boat_used global_data 1
title @a[tag=boat_seated] actionbar {"text":"Лодка отплыла! Вы сбежали!","color":"green"}
execute as @a[tag=boat_seated,team=peaceful] run function maniac:in_game/escape
kill @e[tag=boat_display]
kill @e[tag=boat_seat_1]
kill @e[tag=boat_seat_2]
kill @e[tag=boat_seat_3]
kill @e[tag=boat_seat_4]
kill @e[tag=boat_motor_interaction]
kill @e[tag=boat_motor_display]
tag @a[tag=boat_seated] remove boat_seated
tag @a[tag=boat_rider] remove boat_rider
data remove storage efm boat.spawned
