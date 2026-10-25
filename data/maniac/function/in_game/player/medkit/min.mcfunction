advancement revoke @s only maniac:medkit_min
scoreboard players add @s count_medkit_used 1
#execute if score @s count_medkit_used > max_medkits_using config run return run function maniac:in_game/player/medkit/debuff
execute if score @s count_medkit_used > medkits_per_player config run return run function maniac:in_game/player/medkit/debuff
execute if score @s game_health < player_max_hp config run scoreboard players add @s game_health 2
