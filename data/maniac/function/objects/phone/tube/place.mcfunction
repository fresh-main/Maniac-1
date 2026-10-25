data modify storage efm switch.tube set value 0
scoreboard players set phone_timer1 global_data 0
scoreboard players set phone_timer2 global_data 0
scoreboard players set phone_timer3 global_data 0
title @s actionbar ""
clear @a iron_ingot[custom_data={item: "tube"}]
function maniac:objects/phone/show_tube
execute as @n[tag=phone_display] run function maniac:objects/phone/reset_display