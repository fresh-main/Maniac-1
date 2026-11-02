scoreboard players reset @s refueling
clear @s glass_bottle
execute if score location_index config matches 1 if data storage efm switch{checkpointGenerator1:0} if block 30 9 -179 water_cauldron[level=3] run function maniac:locations/location_1/checkpoint/generator1
execute if score location_index config matches 1 if data storage efm switch{checkpointGenerator2:0} if block 9 9 -173 water_cauldron[level=3] run function maniac:locations/location_1/checkpoint/generator2
execute unless score elevator_switch config matches 1 run return run title @s actionbar {"text":"Данный способ побега отключён", "color":"red"}
execute if data storage efm switch{firstGeneratorWorking:0} if block -152 1 5 water_cauldron[level=3] run function maniac:objects/generators/generator1
execute if data storage efm switch{secondGeneratorWorking:0} if block -138 19 15 water_cauldron[level=3] run function maniac:objects/generators/generator2
execute if data storage efm switch{firstGeneratorWorking:1,secondGeneratorWorking:1} run function maniac:objects/generators/elevator
