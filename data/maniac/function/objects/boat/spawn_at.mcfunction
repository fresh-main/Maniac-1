$execute positioned $(x) $(y) $(z) run forceload add ~ ~
$summon minecraft:oak_boat $(x) $(y) $(z) {Tags:["escape_boat"],Rotation:[$(yaw),0f],Invulnerable:1b}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:interaction ~-.3 ~0.65 ~-.35 {Tags:["boat_seat_interaction","boat_seat_1_interaction"],width:0.35f,height:0.65f}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:interaction ~.3 ~0.65 ~-.35 {Tags:["boat_seat_interaction","boat_seat_2_interaction"],width:0.35f,height:0.65f}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:interaction ~-.3 ~0.65 ~.35 {Tags:["boat_seat_interaction","boat_seat_3_interaction"],width:0.35f,height:0.65f}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:interaction ~.3 ~0.65 ~.35 {Tags:["boat_seat_interaction","boat_seat_4_interaction"],width:0.35f,height:0.65f}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:armor_stand ~-.3 ~0.2 ~-.35 {Tags:["boat_seat","boat_seat_1"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:armor_stand ~.3 ~0.2 ~-.35 {Tags:["boat_seat","boat_seat_2"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:armor_stand ~-.3 ~0.2 ~.35 {Tags:["boat_seat","boat_seat_3"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:armor_stand ~.3 ~0.2 ~.35 {Tags:["boat_seat","boat_seat_4"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b}
$execute if entity @e[tag=escape_boat] positioned $(x) $(y) $(z) run summon minecraft:interaction ~ ~1.2 ~-0.7 {Tags:["boat_motor_interaction"],width:0.8f,height:0.8f}
data modify storage efm boat.spawned set value 1b
