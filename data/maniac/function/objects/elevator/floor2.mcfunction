scoreboard players set elevator2_timer global_data 7
data modify storage efm switch.elevatorWorking set value 3
execute if blocks -133 3 -7 -132 1 -7 -132 1 -7 masked run function maniac:objects/elevator/door3/close