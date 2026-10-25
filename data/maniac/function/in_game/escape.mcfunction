title @s title {"text":"✔ вы сбежали ✔","color":"green","bold":true}
scoreboard players add escaped global_data 1
execute store result score policeman_count global_data if entity @a[team=police]
execute if data storage efm switch{police:1} if score policeman_count global_data < max_policeman_count config run return run function maniac:in_game/player/police/stay_police
execute store result score peaceful_count global_data if entity @a[team=peaceful]
execute store result score maniac_count global_data if entity @a[team=maniac]
execute store result score policeman_count global_data if entity @a[team=police]
execute if score maniac_count global_data matches 0 run function maniac:in_game/end
execute if score peaceful_count global_data matches 0 if score policeman_count global_data matches 0 run function maniac:in_game/end
team join Hub
#scoreboard players operation @s coins += round round_coins
#tellraw @a [{"text":"+ ","color":"green"},{"score":{"name":"round","objective":"round_coins"},"bold":true,"color":"gold"},{"text":"\u26c3 ","color":"gold"},{"text":"за побег","color":"gray"}]
gamemode spectator @s