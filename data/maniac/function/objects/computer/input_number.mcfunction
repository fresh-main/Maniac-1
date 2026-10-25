playsound minecraft:block.stone_button.click_on master @a ~ ~ ~
execute unless score gate_switch config matches 1 run return run title @s actionbar {"text":"Данный способ побега отключён", "color":"red"}
execute if data storage efm switch{bigDoorOpen:1} on target run return run title @s actionbar {"text":"Дверь уже открыта","color":"yellow"}
execute if data storage efm switch{pcInputWorking:0} run return fail
execute if data storage efm switch{wireFix:0} on target run return run title @s actionbar {"text":"Нет питания...","color":"yellow"}

data modify storage efm switch.bigDoorOpen set value 0

execute store result storage efm converter.char_pos int 2 run scoreboard players get pc_char_pos global_data
scoreboard players add pc_char_pos global_data 1
data modify storage efm converter.char set from entity @s Passengers[0].data.num
execute as @n[tag=input_code] run data modify storage efm converter.nbt set from entity @s text
function maniac:untils/code_operations/replace_char
execute as @n[tag=input_code] run data modify entity @s text set from storage efm converter.nbt
execute if score pc_char_pos global_data matches ..3 run return fail

execute if function maniac:objects/computer/password_test_macros run return run function maniac:objects/computer/true
function maniac:objects/computer/false