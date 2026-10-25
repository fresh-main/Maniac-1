playsound block.stone_button.click_off block @a ~ ~ ~ 0.3 2
execute if data storage efm switch{tube:0} run return fail
execute if data storage efm switch{electricity:0} on target run return run title @s actionbar [{"text":"Телефон не работает, похоже надо заглянуть в ","color":"yellow"},{"text":"электрощитовую","color":"gold"}]
execute if data storage efm switch{phoneHasConnection:0} on target run return run title @s actionbar [{"text":"Нет связи, надо починить провод с помощью ","color":"yellow"},{"text":"изоленты","color":"gold"}]
execute if score phone_timer1 global_data matches 1.. run return fail
execute if score phone_timer2 global_data matches 1.. run return fail
execute if score phone_timer3 global_data matches 1.. run return fail
data modify storage efm converter.nbt set from entity @n[tag=phone_display] text
function maniac:untils/code_operations/str_to_nbt with storage efm converter
execute unless data storage efm converter.nbt.text run function maniac:untils/code_operations/convert_to_format
execute unless data storage minecraft:efm converter.nbt{text:"______"} run return run scoreboard players set phone_timer1 global_data 60
function maniac:objects/phone/reset_display