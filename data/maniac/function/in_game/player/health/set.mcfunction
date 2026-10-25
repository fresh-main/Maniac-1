scoreboard players operation temp global_data = @s game_health
execute store result storage efm num int 1 run scoreboard players operation temp global_data -= @s health
execute if score temp global_data matches 1.. run return run function maniac:in_game/player/health/add with storage efm
execute store result storage efm num int -1 run data get storage efm num
function maniac:in_game/player/health/remove with storage efm