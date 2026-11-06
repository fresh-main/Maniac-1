# Координаты задаются в efm boat: {enabled:1b,x:0.0d,y:0.0d,z:0.0d,yaw:0.0f}
tellraw @a [{"text":"[Лодка] spawn: проверка конфигурации","color":"gold"}]
execute unless data storage efm boat{enabled:1b} run tellraw @a [{"text":"[Лодка] ОШИБКА: лодка отключена или efm boat не задан","color":"red"}]
execute unless data storage efm boat{enabled:1b} run return 0
execute if score boat_used global_data matches 1 run tellraw @a [{"text":"[Лодка] Пропуск: boat_used=1","color":"yellow"}]
execute if score boat_used global_data matches 1 run return 0
execute if score boat_spawn_attempt global_data matches 1 run return 0
# Не повторяем сборку лодки на каждом тике после неудачной попытки
scoreboard players set boat_spawn_attempt global_data 1
execute if data storage efm boat.spawned unless entity @e[tag=escape_boat] run tellraw @a [{"text":"[Лодка] Маркер был, лодки нет; сбрасываю маркер","color":"yellow"}]
execute if data storage efm boat.spawned unless entity @e[tag=escape_boat] run data remove storage efm boat.spawned
execute if data storage efm boat.spawned run return 0
tellraw @a [{"text":"[Лодка] Запускаю сборку в minecraft:overworld","color":"gold"}]
execute in minecraft:overworld run function maniac:objects/boat/spawn_at with storage efm boat
