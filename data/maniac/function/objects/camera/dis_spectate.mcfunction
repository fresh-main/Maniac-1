tag @s remove spectating
clear @s carved_pumpkin
spectate
gamemode adventure @s
function maniac:untils/get_name
execute at @s as @n[tag=camera_marker,distance=..2] run function maniac:objects/camera/dis_spectate_macros with entity @s data
function maniac:objects/camera/back with storage efm

