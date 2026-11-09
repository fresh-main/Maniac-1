execute if score location_index config matches 0 run function maniac:locations/location_0/spawn
execute if score location_index config matches 1 run function maniac:locations/location_1/spawn
execute if score location_index config matches 1 run data modify storage efm boat set from storage efm boat_location_1
execute if score location_index config matches 1 run function maniac:objects/boat/spawn
