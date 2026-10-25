scoreboard players reset @s refueling
clear @s glass_bottle
execute unless score elevator_switch config matches 1 run return run title @s actionbar {"text":"Данный способ побега отключён", "color":"red"}
execute if data storage efm switch{firstGeneratorWorking:0} if block -152 1 5 water_cauldron[level=3] run function maniac:objects/generators/generator1
execute if data storage efm switch{secondGeneratorWorking:0} if block -138 19 15 water_cauldron[level=3] run function maniac:objects/generators/generator2
execute if data storage efm switch{firstGeneratorWorking:1,secondGeneratorWorking:1} run function maniac:objects/generators/elevator