scoreboard players set boat_used global_data 1
execute as @a[tag=boat_rider,team=peaceful] run function maniac:in_game/escape
tag @a[tag=boat_rider] remove boat_rider
kill @e[tag=escape_boat]
kill @e[tag=boat_seat]
kill @e[tag=boat_seat_interaction]
kill @e[tag=boat_motor_interaction]
kill @e[tag=boat_motor_display]
data remove storage efm boat.spawned
