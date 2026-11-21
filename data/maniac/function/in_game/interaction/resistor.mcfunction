execute unless items entity @s weapon.mainhand *[custom_data~{item: "отвёртка"}] run return run title @s actionbar [{"text":"Для починки мне нужна ","color":"yellow"},{"text":"отвёртка","color":"gold"}]
clear @s *[minecraft:custom_data~{item: "отвёртка"}]
function maniac:objects/resistor/fix
