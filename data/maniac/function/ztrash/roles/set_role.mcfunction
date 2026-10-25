$tag @s add $(player)
$tag @s remove $(player)
$tag @s add $(role)
$tag @s remove $(role)
scoreboard players set temp global_data 1
$execute \
    if data storage minecraft:efm {true:$(checkRole)b} \
    unless data storage efm:roles list[{role:"$(role)"}] \
    run return run \
    execute if data storage minecraft:efm {true:$(sendFeedback)b} run \
    tellraw @s {"text": " Ошибка: Роли с название \"$(role)\" не существует","color": "red"}
$execute \
    if data storage minecraft:efm {true:$(checkPlayer)b} \
    unless entity @a[name=$(player)] \
    run return run \
    execute if data storage minecraft:efm {true:$(sendFeedback)b} run \
    tellraw @s {"text": " Ошибка: Игрок с ником \"$(player)\" не обнаружен, проверте, находится ли игрок на сервере", "color": "red"}
$execute if data storage efm:roles list[{player:"$(player)"}] run data modify storage efm:roles list[{player:"$(player)"}].player set value ""
$data modify storage efm:roles list[{role:"$(role)"}].player set value "$(player)"
$execute if data storage minecraft:efm {true:$(sendFeedback)b} run \
    tellraw @s {"text":" Игроку \"$(player)\" установлена роль \"$(role)\"","color":"green"}