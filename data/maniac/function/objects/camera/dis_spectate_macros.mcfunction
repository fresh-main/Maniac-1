scoreboard players set @s camera_break_time 3
$function maniac:objects/camera/test_camera/return_status {camera:$(camera)}
execute if score temp global_data matches -1 run return fail
$function maniac:objects/camera/set_camera_status {camera:$(camera), status:0}