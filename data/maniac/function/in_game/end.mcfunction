function maniac:in_game/end_extra

execute if score escaped global_data matches 0 run title @a title {"text":"Маньяк победил","color":"red"}
execute if score police_status global_data matches 1 run execute if score escaped global_data matches 0 run title @a subtitle {"text":"Полиция не успела","color":"gray"}
execute if score police_status global_data matches 2 run execute if score escaped global_data matches 1.. run title @a subtitle {"text":"Полиция упустила маньяка","color":"gray"}
execute if score police_status global_data matches 3 run execute if score escaped global_data matches 1.. run title @a subtitle {"text":"Полиция поймала маньяка","color":"gray"}
execute if score police_status global_data matches 4 run execute if score escaped global_data matches 1.. run title @a subtitle {"text":"Полицейский случайно устранил Гражданского","color":"gray"}
scoreboard players set police_status global_data 0
execute if score escaped global_data matches 1.. run title @a title {"text":"Мирные победили","color":"green"}