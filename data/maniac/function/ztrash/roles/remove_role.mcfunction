$execute if data storage minecraft:efm {true:$(sendFeedback)b} unless data storage efm:roles list[{role:"$(role)"}] run return run tellraw @s {"text":"  Ошибка: Роли \"$(role)\" не существует","color":"red"}
$execute if data storage minecraft:efm {true:$(sendFeedback)b} if data storage efm:roles list[{role:"$(role)"}] run tellraw @s {"text":" Роль \"$(role)\" удалена","color":"green"}
$data remove storage efm:roles list[{role:"$(role)"}]
