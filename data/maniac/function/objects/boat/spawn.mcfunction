# Создание лодки и её interaction-сущностей
kill @e[tag=boat_display]
kill @e[tag=boat_seat_1]
kill @e[tag=boat_seat_2]
kill @e[tag=boat_seat_3]
kill @e[tag=boat_seat_4]
kill @e[tag=boat_motor_interaction]
kill @e[tag=boat_motor_display]

execute in minecraft:overworld run function maniac:objects/boat/spawn_at with storage efm boat
