execute if score location_index config matches 1 run data modify entity @e[tag=resistor_gate,limit=1] Rotation[1] set value 0f
execute unless score location_index config matches 1 run data modify entity @n[tag=resistor] Rotation[1] set value 0f
data modify storage efm switch.electricity set value 1
function maniac:objects/phone/reset_display
tellraw @a {"text": "Оповещение: питание электрощитка восстановлено", "color": "yellow"}
execute if score location_index config matches 1 run playsound minecraft:block.amethyst_cluster.place master @a 40 10 -165
execute unless score location_index config matches 1 run playsound minecraft:block.amethyst_cluster.place master @a -146 20 14
