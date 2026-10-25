execute if score limit_camera_break global_data matches 0 on attacker run return run title @s actionbar {"text":"Я устал ломать камеры","color": "yellow"}
execute on vehicle run function maniac:objects/camera/break/break with entity @s Passengers[0].data
execute on attacker run function maniac:in_game/player/maniac/stan {tick:100,second:5}
execute on attacker if score temp global_data matches 0 run title @s actionbar {"text":"Мне нет смысла сейчас ломать камеру","color": "yellow"}
execute on attacker if score temp global_data matches -1 run title @s actionbar {"text":"Камера сломана","color": "yellow"}
