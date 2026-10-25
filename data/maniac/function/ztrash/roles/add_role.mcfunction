$tag @s add $(role)
$tag @s remove $(role)
scoreboard players set temp global_data 1
$execute \
    if data storage minecraft:efm {true:$(checkCopies)b} \
    if data storage efm:roles list[{role:"$(role)"}] \
    run return run \
    execute if data storage minecraft:efm {true:$(sendFeedback)b} run \ 
    tellraw @s {"text":" Ошибка: роль с названием \"$(role)\" уже существует","color":"red"}
$data modify storage efm:roles list append value {"role":"$(role)",player:""}
$execute if data storage minecraft:efm {true:$(sendFeedback)b} run \
    tellraw @s {"text":" Роль \"$(role)\" успешно создана","color":"green"}