execute at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 0.2

scoreboard players set maniac_count global_data 1
scoreboard players set max_policeman_count config 2
scoreboard players set medkits_per_player config 0
scoreboard players set player_max_hp config 2
scoreboard players set hunt_duration config 180
scoreboard players set police_hunt_duration config 120
scoreboard players set game_time_switch config 0

function maniac:out_game/interaction/config/int/update {score:maniac_count, min_count:1, max_count:3, tag:maniac}
function maniac:out_game/interaction/config/int/update {score:max_policeman_count, min_count:1, max_count:3, tag:policeman_count}
function maniac:out_game/interaction/config/int/update {score:medkits_per_player, min_count:0, max_count:4, tag:medkit_count}
function maniac:out_game/interaction/config/int/update {score:player_max_hp, min_count:2, max_count:12, tag:hp}
function maniac:out_game/interaction/config/int/update {score:hunt_duration, min_count:10, max_count:600, tag:time_hunt}
function maniac:out_game/interaction/config/int/update {score:police_hunt_duration, min_count:10, max_count:600, tag:time_police}
function maniac:out_game/interaction/config/boolean/update {score:game_time_switch, tag:time_game_interaction}