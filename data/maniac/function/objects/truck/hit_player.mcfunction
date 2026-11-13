execute if data storage efm switch{hunt:1} run scoreboard players set @s game_health 0
execute if data storage efm switch{hunt:0} run scoreboard players remove @s game_health 2
execute if score @s game_health matches ..0 run function maniac:in_game/player/death/death
