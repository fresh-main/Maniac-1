scoreboard players set phone_char_pos global_data 0
execute if data storage efm switch{electricity:1} run return run data modify entity @n[tag=phone_display] text set value '{"text":"______","font":"uniform","color":"#00ff00"}'
data modify entity @n[tag=phone_display] text set value '{"text":"","font":"uniform","color":"#00ff00"}'