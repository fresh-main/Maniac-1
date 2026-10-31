execute store result score peaceful_count global_data if entity @a[team=peaceful]
execute store result score maniac_count global_data if entity @a[team=maniac]
execute store result score policeman_count global_data if entity @a[team=police]
execute if score maniac_count global_data matches 0 run function maniac:in_game/end
execute if score peaceful_count global_data matches 0 if score policeman_count global_data matches 0 run function maniac:in_game/end
execute if data storage efm switch{police:1} if score policeman_count global_data < max_policeman_count config as @r[team=Hub,tag=!just_spectator] unless data entity @s {health:0.0f} at @s run function maniac:in_game/player/police/stay_police

execute if score timer global_data matches 0.. run function maniac:in_game/timer/timer

title @a[tag=spectating] actionbar {"text":"WASD - Чтобы вращать камеру. SHIFT - Чтобы выйти.","color":"yellow"}

execute as @e[type=item,scores={pickup_timer=1..}] run function maniac:in_game/pickup_timer

execute if data storage efm switch{elevatorWorking:1} run function maniac:objects/elevator/buttons
execute if data storage efm switch{elevatorWorking:2} if block -130 11 -6 #buttons[powered=true] run function maniac:objects/elevator/1to0
execute if data storage efm switch{elevatorWorking:3} if block -130 20 -6 #buttons[powered=true] run function maniac:objects/elevator/2to0
execute if score location_index config matches 1 run function maniac:locations/location_1/checkpoint/check

execute if score elevator1_timer global_data matches 0.. run function maniac:in_game/timer/macros_timer {message:"Лифт приедет на 1 этаж через ", type:"elevator1"}
execute if score elevator2_timer global_data matches 0.. run function maniac:in_game/timer/macros_timer {message:"Лифт приедет на 2 этаж через ", type:"elevator2"}
execute if score radio_call_timer global_data matches 1.. run function maniac:objects/radio/call/tick
