execute unless score game_state global_data matches 1 run return 0
execute if score motor_stage global_data matches 0 run return run function maniac:objects/motor/place_body
execute if score motor_stage global_data matches 1 run return run function maniac:objects/motor/place_part_1
execute if score motor_stage global_data matches 2 run return run function maniac:objects/motor/place_part_2
execute if score motor_stage global_data matches 3 run return run function maniac:objects/motor/place_part_3
execute if score motor_stage global_data matches 4 run return run function maniac:objects/motor/take_motor
