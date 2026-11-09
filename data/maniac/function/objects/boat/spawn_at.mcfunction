tellraw @a [{"text":"[Лодка] spawn_at: начало; переданные координаты x=","color":"gold"},{"nbt":"x","storage":"efm:boat","color":"yellow"},{"text":" y=","color":"gold"},{"nbt":"y","storage":"efm:boat","color":"yellow"},{"text":" z=","color":"gold"},{"nbt":"z","storage":"efm:boat","color":"yellow"},{"text":" yaw=","color":"gold"},{"nbt":"yaw","storage":"efm:boat","color":"yellow"}]
tellraw @a [{"text":"[Лодка] Шаг 1: удаляю старые части и снимаю маркер","color":"gold"}]
kill @e[tag=escape_boat]
kill @e[tag=boat_seat]
kill @e[tag=boat_seat_interaction]
kill @e[tag=boat_motor_interaction]
kill @e[tag=boat_motor_display]
data remove storage efm boat.spawned
tellraw @a [{"text":"[Лодка] Шаг 2: загружаю чанк","color":"gold"}]
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 run forceload add ~ ~
tellraw @a [{"text":"[Лодка] Шаг 3: создаю корпус","color":"gold"}]
$summon minecraft:oak_boat $(x) $(y) $(z) {Tags:["escape_boat"],Rotation:[$(yaw),0f],Invulnerable:1b,Silent:1b}
$execute positioned $(x) $(y) $(z) if entity @e[tag=escape_boat,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Корпус найден после summon","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=escape_boat,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: корпус не найден после summon","color":"red"}]
tellraw @a [{"text":"[Лодка] Шаг 4: создаю hitbox мест 1–4","color":"gold"}]
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:interaction ~-.3 ~0.65 ~-.35 {Tags:["boat_seat_interaction","boat_seat_1_interaction"],width:0.55f,height:0.8f}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:interaction ~.3 ~0.65 ~-.35 {Tags:["boat_seat_interaction","boat_seat_2_interaction"],width:0.55f,height:0.8f}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:interaction ~-.3 ~0.65 ~.35 {Tags:["boat_seat_interaction","boat_seat_3_interaction"],width:0.55f,height:0.8f}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:interaction ~.3 ~0.65 ~.35 {Tags:["boat_seat_interaction","boat_seat_4_interaction"],width:0.55f,height:0.8f}
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_seat_1_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Hitbox места 1 создан","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_seat_1_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: hitbox места 1 отсутствует","color":"red"}]
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_seat_2_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Hitbox места 2 создан","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_seat_2_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: hitbox места 2 отсутствует","color":"red"}]
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_seat_3_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Hitbox места 3 создан","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_seat_3_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: hitbox места 3 отсутствует","color":"red"}]
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_seat_4_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Hitbox места 4 создан","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_seat_4_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: hitbox места 4 отсутствует","color":"red"}]
tellraw @a [{"text":"[Лодка] Шаг 5: создаю стойки мест 1–4","color":"gold"}]
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:armor_stand ~-.3 ~0.35 ~-.35 {Tags:["boat_seat","boat_seat_1"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:armor_stand ~.3 ~0.35 ~-.35 {Tags:["boat_seat","boat_seat_2"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:armor_stand ~-.3 ~0.35 ~.35 {Tags:["boat_seat","boat_seat_3"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b}
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:armor_stand ~.3 ~0.35 ~.35 {Tags:["boat_seat","boat_seat_4"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Small:1b}
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_seat_1,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Стойка места 1 создана","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_seat_1,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: стойка места 1 отсутствует","color":"red"}]
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_seat_2,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Стойка места 2 создана","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_seat_2,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: стойка места 2 отсутствует","color":"red"}]
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_seat_3,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Стойка места 3 создана","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_seat_3,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: стойка места 3 отсутствует","color":"red"}]
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_seat_4,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Стойка места 4 создана","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_seat_4,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: стойка места 4 отсутствует","color":"red"}]
tellraw @a [{"text":"[Лодка] Шаг 6: сажаю стойки в лодку","color":"gold"}]
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=boat_seat_1,distance=..2,limit=1,sort=nearest] run ride @e[tag=boat_seat_1,distance=..2,limit=1,sort=nearest] mount @e[tag=escape_boat,distance=..2,limit=1,sort=nearest]
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=boat_seat_2,distance=..2,limit=1,sort=nearest] run ride @e[tag=boat_seat_2,distance=..2,limit=1,sort=nearest] mount @e[tag=escape_boat,distance=..2,limit=1,sort=nearest]
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=boat_seat_3,distance=..2,limit=1,sort=nearest] run ride @e[tag=boat_seat_3,distance=..2,limit=1,sort=nearest] mount @e[tag=escape_boat,distance=..2,limit=1,sort=nearest]
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=boat_seat_4,distance=..2,limit=1,sort=nearest] run ride @e[tag=boat_seat_4,distance=..2,limit=1,sort=nearest] mount @e[tag=escape_boat,distance=..2,limit=1,sort=nearest]
$execute positioned $(x) $(y) $(z) if data entity @e[tag=boat_seat_1,distance=..2,limit=1] Passengers[0] run tellraw @a [{"text":"[Лодка] Стойка 1 смонтирована","color":"green"}]
$execute positioned $(x) $(y) $(z) unless data entity @e[tag=boat_seat_1,distance=..2,limit=1] Passengers[0] run tellraw @a [{"text":"[Лодка] ОШИБКА: стойка 1 не смонтирована","color":"red"}]
$execute positioned $(x) $(y) $(z) if data entity @e[tag=boat_seat_2,distance=..2,limit=1] Passengers[0] run tellraw @a [{"text":"[Лодка] Стойка 2 смонтирована","color":"green"}]
$execute positioned $(x) $(y) $(z) unless data entity @e[tag=boat_seat_2,distance=..2,limit=1] Passengers[0] run tellraw @a [{"text":"[Лодка] ОШИБКА: стойка 2 не смонтирована","color":"red"}]
$execute positioned $(x) $(y) $(z) if data entity @e[tag=boat_seat_3,distance=..2,limit=1] Passengers[0] run tellraw @a [{"text":"[Лодка] Стойка 3 смонтирована","color":"green"}]
$execute positioned $(x) $(y) $(z) unless data entity @e[tag=boat_seat_3,distance=..2,limit=1] Passengers[0] run tellraw @a [{"text":"[Лодка] ОШИБКА: стойка 3 не смонтирована","color":"red"}]
$execute positioned $(x) $(y) $(z) if data entity @e[tag=boat_seat_4,distance=..2,limit=1] Passengers[0] run tellraw @a [{"text":"[Лодка] Стойка 4 смонтирована","color":"green"}]
$execute positioned $(x) $(y) $(z) unless data entity @e[tag=boat_seat_4,distance=..2,limit=1] Passengers[0] run tellraw @a [{"text":"[Лодка] ОШИБКА: стойка 4 не смонтирована","color":"red"}]
tellraw @a [{"text":"[Лодка] Шаг 7: создаю hitbox двигателя","color":"gold"}]
$execute positioned $(x) $(y) $(z) rotated $(yaw) 0 if entity @e[tag=escape_boat,distance=..2,limit=1] run summon minecraft:interaction ~ ~1.2 ~-0.7 {Tags:["boat_motor_interaction"],width:0.8f,height:0.8f}
$execute positioned $(x) $(y) $(z) if entity @e[tag=boat_motor_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] Hitbox двигателя создан","color":"green"}]
$execute positioned $(x) $(y) $(z) unless entity @e[tag=boat_motor_interaction,distance=..2,limit=1] run tellraw @a [{"text":"[Лодка] ОШИБКА: hitbox двигателя отсутствует","color":"red"}]
tellraw @a [{"text":"[Лодка] Шаг 8: проверяю целостность сборки","color":"gold"}]
$execute positioned $(x) $(y) $(z) if entity @e[tag=escape_boat,distance=..2,limit=1] if entity @e[tag=boat_seat_1,distance=..2,limit=1] if entity @e[tag=boat_seat_2,distance=..2,limit=1] if entity @e[tag=boat_seat_3,distance=..2,limit=1] if entity @e[tag=boat_seat_4,distance=..2,limit=1] if entity @e[tag=boat_seat_1_interaction,distance=..2,limit=1] if entity @e[tag=boat_seat_2_interaction,distance=..2,limit=1] if entity @e[tag=boat_seat_3_interaction,distance=..2,limit=1] if entity @e[tag=boat_seat_4_interaction,distance=..2,limit=1] if entity @e[tag=boat_motor_interaction,distance=..2,limit=1] run data modify storage efm boat.spawned set value 1b
$execute positioned $(x) $(y) $(z) if data storage efm boat.spawned run scoreboard players set boat_spawn_attempt global_data 1
$execute positioned $(x) $(y) $(z) if data storage efm boat.spawned run tellraw @a [{"text":"[Лодка] УСПЕХ: корпус и все компоненты на месте; boat.spawned=1","color":"green"}]
$execute positioned $(x) $(y) $(z) unless data storage efm boat.spawned run tellraw @a [{"text":"[Лодка] ОШИБКА: итоговая проверка не пройдена; смотри первое сообщение об отсутствующей части","color":"red"}]
