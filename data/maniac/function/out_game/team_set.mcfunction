$tag @a[limit=$(global_count)] add temp
gamemode adventure @a[tag=temp]
team join peaceful @a[tag=temp]
execute if score maniac_count config matches 1.. unless data storage efm maniac_list[0].s{name:"Рандом"} run function maniac:out_game/set_team/set_maniac_from_list with storage efm maniac_list[0].s
execute if score maniac_count config matches 2.. unless data storage efm maniac_list[1].s{name:"Рандом"} run function maniac:out_game/set_team/set_maniac_from_list with storage efm maniac_list[1].s
execute if score maniac_count config matches 3.. unless data storage efm maniac_list[2].s{name:"Рандом"} run function maniac:out_game/set_team/set_maniac_from_list with storage efm maniac_list[2].s
scoreboard players operation temp global_data = maniac_count config
execute as @a[team=maniac] run scoreboard players remove temp global_data 1
execute store result storage efm num int 1 run scoreboard players get temp global_data
function maniac:out_game/set_team/add_maniac with storage efm
tag @a remove temp