# Координаты лодки передаются из efm:boat через with storage
kill @e[tag=boat_display]
kill @e[tag=boat_seat_1]
kill @e[tag=boat_seat_2]
kill @e[tag=boat_seat_3]
kill @e[tag=boat_seat_4]
kill @e[tag=boat_motor_interaction]
kill @e[tag=boat_motor_display]

data remove storage efm boat.spawned

$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 run summon minecraft:item_display ~ ~ ~ {Tags:["boat_display"],item_display:"ground",item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"minecraft:boat"}}}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 run summon minecraft:interaction ^-0.75 ^ ^-0.75 {Tags:["boat_seat_1"],width:0.75f,height:0.75f}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 run summon minecraft:interaction ^0.75 ^ ^-0.75 {Tags:["boat_seat_2"],width:0.75f,height:0.75f}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 run summon minecraft:interaction ^-0.75 ^ ^0.75 {Tags:["boat_seat_3"],width:0.75f,height:0.75f}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 run summon minecraft:interaction ^0.75 ^ ^0.75 {Tags:["boat_seat_4"],width:0.75f,height:0.75f}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 run summon minecraft:interaction ^ ^ ^1.25 {Tags:["boat_motor_interaction"],width:0.8f,height:0.8f}
scoreboard players set boat_motor_installed global_data 0
scoreboard players set boat_fuel global_data 0
scoreboard players set boat_seats_occupied global_data 0
scoreboard players set boat_escape_ready global_data 0
scoreboard players set boat_used global_data 0
data modify storage efm boat.spawned set value 1b
