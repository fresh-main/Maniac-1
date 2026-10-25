data modify entity @s item set from block -154 -63 -2 Items[0]
execute store result entity @s Rotation[0] float 1 run random value 0..359
data remove block -154 -63 -2 Items[0]
function maniac:in_game/item_spawn/set_interaction_size
tag @s remove temp