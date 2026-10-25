playsound block.stone_button.click_off block @a ~ ~ ~ 0.3 2
execute if data storage efm switch{tube:0} run return fail
execute if data storage efm switch{electricity:0} on target run return run title @s actionbar [{"text":"Телефон не работает, похоже надо заглянуть в ","color":"yellow"},{"text":"электрощитовую","color":"gold"}]
execute if score phone_timer1 global_data matches 1.. run return fail
execute if score phone_timer2 global_data matches 1.. run return fail
execute if score phone_timer3 global_data matches 1.. run return fail
execute if score phone_char_pos global_data matches 6.. run function maniac:objects/phone/reset_display
execute store result storage efm converter.char_pos int 1 run scoreboard players get phone_char_pos global_data
scoreboard players add phone_char_pos global_data 1
data modify storage efm converter.char set from entity @s Passengers[0].data.num
execute as @n[tag=phone_display] run data modify storage efm converter.nbt set from entity @s text
function maniac:untils/code_operations/replace_char
execute as @n[tag=phone_display] run data modify entity @s text set from storage efm converter.nbt