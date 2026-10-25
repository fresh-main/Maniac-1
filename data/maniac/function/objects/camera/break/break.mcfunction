$function maniac:objects/camera/test_camera/return_status {camera:$(camera)}
execute if score temp global_data matches -1 run return fail
execute if score temp global_data matches 0 unless score @n[tag=camera_marker,distance=..1,type=marker] camera_break_time matches 1.. run return fail
scoreboard players remove limit_camera_break global_data 1
$data modify storage efm camera_status[$(camera)] set value -1
tag @s add break
playsound entity.zombie.break_wooden_door block @a ~ ~ ~
particle electric_spark ~ ~ ~ .005 .005 .005 .09 10

execute as @p[tag=spectating,distance=..2] at @s run function maniac:objects/camera/dis_spectate