execute unless items entity @s weapon.mainhand *[custom_data={item: "болторез"}] run return run title @s actionbar [{"text":"Закрыто, похоже тут нужен ","color":"yellow"},{"text":"болторез","color":"gold"}]
clear @s shears[custom_data={item: "болторез"}]
function maniac:objects/gl_door/open
execute at @s run playsound minecraft:block.chain.place master @a -120 10 17
