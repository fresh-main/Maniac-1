# Координаты задаются в efm boat: {enabled:1b,x:0.0d,y:0.0d,z:0.0d,yaw:0.0f}
execute unless data storage efm boat{enabled:1b} run return 0
execute if score boat_used global_data matches 1 run return 0
execute if entity @e[tag=escape_boat] run return 0
execute in minecraft:overworld run function maniac:objects/boat/spawn_at with storage efm boat
