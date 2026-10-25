data modify entity @n[tag=provod] Rotation[0] set value 0f
tp @n[tag=izolenta_1] -145.465 1.04 -5.56
tp @n[tag=pc_display1] -145.01 3.5 -10.5
tp @n[tag=pc_display2] -145.01 3.0625 -10.5
tp @n[tag=pc_display3] -145.01 2.7 -10.5
tp @n[tag=pc_display4] -145.01 2.0 -11.83
tp @n[tag=pc_display5] -145.01 2.07 -9.42
data modify storage efm switch.wireFix set value 1
playsound minecraft:item.bundle.insert master @a -145 1 -5
tellraw @a {"text": "Оповещение: провод в комнате управления восстановлен", "color": "yellow"}
