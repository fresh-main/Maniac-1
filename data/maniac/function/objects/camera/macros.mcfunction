execute unless score camera_switch config matches 1 run return run title @s actionbar [{"text":"Камеры отключены в этой игре","color":"red"}]
$function maniac:objects/camera/test_camera/return_status {camera:$(camera)}
execute if score temp global_data matches 1 on target run return run title @s actionbar [{"text":"Камера занята","color":"yellow"}]
execute if score temp global_data matches -1 on target run return run title @s actionbar [{"text":"Нет сигнала от камены, похоже она сломана","color":"yellow"}]
$execute on target at @s run function maniac:objects/camera/spectate {camera:$(camera)}