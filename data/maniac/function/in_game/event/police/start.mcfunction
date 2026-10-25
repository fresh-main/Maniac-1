scoreboard players set hunt_status global_data 1
execute as @r[team=Hub,tag=!just_spectator] run function maniac:in_game/player/police/stay_police
gamemode adventure
scoreboard players set police_status global_data 3