data modify entity @n[tag=resistor] Rotation[1] set value 0f
data modify storage efm switch.electricity set value 1
function maniac:objects/phone/reset_display
tellraw @a {"text": "Оповещение: питание электрощитка восстановлено", "color": "yellow"}
execute at @s run playsound minecraft:block.amethyst_cluster.place master @a -146 20 14
