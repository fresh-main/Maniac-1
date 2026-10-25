execute unless items entity @s weapon.mainhand *[custom_data={item: "изолента"}] run return run title @s actionbar [{"text":"Для того, чтобы починить провод мне нужна ","color":"yellow"},{"text":"изолента","color":"gold"}]
clear @s *[custom_data={item: "изолента"}]
function maniac:objects/wire/fix