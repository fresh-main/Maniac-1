schedule function maniac:particles_timer 10t
execute positioned -143 5 15 run function maniac:in_game/particles
execute positioned -161 14 5 run function maniac:in_game/particles
execute positioned -146 14 25 run function maniac:in_game/particles
execute positioned -145 23 -13 run function maniac:in_game/particles
execute positioned -136 23 21 run function maniac:in_game/particles
execute positioned -155 23 21 run function maniac:in_game/particles
execute positioned -164 19 18 run function maniac:in_game/particles
execute positioned -163 21.3 -4 run function maniac:in_game/particles
execute positioned -157 23 -2 run function maniac:in_game/particles
execute positioned -169 14 -11 run function maniac:in_game/particles
execute positioned -154 5 22 run function maniac:in_game/particles
execute if data storage efm switch{electricity:0} at @e[tag=resistor] run particle minecraft:electric_spark ~ ~.3 ~.1 .005 .005 .005 .05 1
execute if data storage efm switch{phoneHasConnection:0} at @n[tag=phone_station] run particle minecraft:electric_spark ^0.36 ^-.1 ^0.42 .005 .005 .005 .05 1
execute if data storage efm switch{wireFix:0} run particle electric_spark -145.56 1.04 -5.52 .005 .005 .005 .05 1
execute at @e[tag=break] run particle minecraft:electric_spark ~ ~ ~ .005 .005 .005 .05 1
