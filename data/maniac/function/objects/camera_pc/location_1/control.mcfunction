execute if score @s l1_camera_cd matches 1.. run scoreboard players remove @s l1_camera_cd 1
execute if score @s l1_camera_cd matches 0 if predicate maniac:d run scoreboard players remove @s l1_camera 1
execute if score @s l1_camera matches ..-1 run scoreboard players set @s l1_camera 11
execute if score @s l1_camera_cd matches 0 if predicate maniac:d run scoreboard players set @s l1_camera_cd 10
execute if score @s l1_camera_cd matches 0 if predicate maniac:a run scoreboard players add @s l1_camera 1
execute if score @s l1_camera matches 12.. run scoreboard players set @s l1_camera 0
execute if score @s l1_camera_cd matches 0 if predicate maniac:a run scoreboard players set @s l1_camera_cd 10
execute if score @s l1_camera_cd matches 10 run function maniac:objects/camera_pc/location_1/switch
