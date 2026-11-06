scoreboard players set boat_used global_data 1
execute as @a[tag=boat_rider,team=peaceful] run function maniac:in_game/escape
tag @a[tag=boat_rider] remove boat_rider
function maniac:objects/boat/cleanup
