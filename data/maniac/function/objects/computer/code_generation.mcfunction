execute as @e[tag=display] run data modify entity @s text set value '{"text":" "}'
data modify entity @n[tag=input_code] text set value '{"text":"_ _ _ _"}'
scoreboard players set pc_char_pos global_data 0

execute store result storage efm converter.num0 int 1 run random value 0..9
execute store result storage efm converter.num1 int 1 run random value 0..9
execute store result storage efm converter.num2 int 1 run random value 0..9
execute store result storage efm converter.num3 int 1 run random value 0..9
execute store result storage efm converter.disp_num int 1 run random value 1..4
function maniac:objects/computer/display_code with storage efm converter
data remove storage efm converter.num0
data remove storage efm converter.num1
data remove storage efm converter.num2
data remove storage efm converter.num3
data remove storage efm converter.disp_num