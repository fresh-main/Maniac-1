clear @s iron_ingot[custom_data={item: "tube"}]
spawnpoint @s ~ ~ ~ ~
scoreboard players set @s death 0
gamemode spectator @s
scoreboard players operation @s game_health = player_max_hp config
team join Hub
execute store result storage efm temp byte 1 store result score @s game_health run scoreboard players get player_max_hp config
function maniac:in_game/player/health/macros_settings with storage efm

execute align xz run summon armor_stand ~.5 ~.5 ~.5 {Invisible:1b,Tags:["falling_corpse"],Passengers:[{Tags:["temp"],id:"minecraft:marker",data:{Items:[]}}]}
attribute @n[tag=falling_corpse] gravity base set 10
data modify entity @n[tag=temp] data.Items set from entity @s Inventory
data modify entity @n[tag=temp] data.Rotation set from entity @s Rotation[0]
tag @e[tag=temp] remove temp
clear @s

execute if score hunt_status global_data matches 1.. run tag @s add just_spectator
execute if score infection_switch config matches 1 run function maniac:in_game/player/maniac/stay_maniac