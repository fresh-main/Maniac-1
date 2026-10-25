execute store result storage efm max byte 1 run data get storage efm Pos
function maniac:in_game/item_spawn/random with storage efm
function maniac:in_game/item_spawn/get_pos with storage efm
execute as @r[tag=temp] run function maniac:in_game/spawn/spawn with storage efm
execute if entity @a[tag=temp] run function maniac:in_game/spawn/iterating