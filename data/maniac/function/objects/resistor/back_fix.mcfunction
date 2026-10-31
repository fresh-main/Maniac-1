execute if score location_index config matches 1 run data modify entity @e[tag=resistor_gate,limit=1] Rotation[1] set value 15f
execute unless score location_index config matches 1 run data modify entity @n[tag=resistor] Rotation[1] set value 15f
data modify storage efm switch.electricity set value 0
data modify storage efm switch.electricity set value 0
function maniac:objects/phone/reset_display
