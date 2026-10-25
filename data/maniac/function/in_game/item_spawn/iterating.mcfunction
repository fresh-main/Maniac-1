execute store result storage efm max int 1 run data get storage efm Pos
function maniac:in_game/item_spawn/random with storage efm
function maniac:in_game/item_spawn/get_pos with storage efm
execute store result storage efm max int 1 run data get storage efm select_pos
function maniac:in_game/item_spawn/random with storage efm
function maniac:in_game/item_spawn/get_pos2 with storage efm
function maniac:in_game/item_spawn/pos with storage efm
execute if block -154 -63 -2 barrel{Items:[{}]} run function maniac:in_game/item_spawn/iterating