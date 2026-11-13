# Управление жизненным циклом лодки
execute unless data storage efm boat{enabled:1b} run return 0
execute if score boat_used global_data matches 1 run return 0
execute if data storage efm boat.spawned unless entity @e[tag=boat_display] run data remove storage efm boat.spawned
execute unless data storage efm boat.spawned run function maniac:objects/boat/spawn

execute as @e[tag=boat_display] run effect give @s minecraft:glowing 2 0 true
execute as @e[tag=boat_motor_display] run effect give @s minecraft:glowing 2 0 true
execute as @e[tag=boat_motor_interaction] run effect give @s minecraft:glowing 2 0 true
execute as @e[tag=boat_seat_1] run effect give @s minecraft:glowing 2 0 true
execute as @e[tag=boat_seat_2] run effect give @s minecraft:glowing 2 0 true
execute as @e[tag=boat_seat_3] run effect give @s minecraft:glowing 2 0 true
execute as @e[tag=boat_seat_4] run effect give @s minecraft:glowing 2 0 true

execute as @a[tag=boat_seated] unless data entity @s RootVehicle run function maniac:objects/boat/leave_seat
execute if score boat_seats_occupied global_data matches 4 if score boat_fuel global_data matches 3 if score boat_motor_installed global_data matches 1 as @a[tag=boat_seated] run title @s actionbar {"text":"Все на борту. Нажмите на мотор для отплытия","color":"green"}
