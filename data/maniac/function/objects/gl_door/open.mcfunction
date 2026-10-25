tp @e[tag=zamok] -119.68 7 17.375
tp @e[tag=gl_door_right] -119.5 12.0 18.4
tp @e[tag=gl_door_left] -119.5 12.0 16.6
fill -120 13 17 -120 10 17 air
data modify storage efm switch.mainEntranceOpen set value 1
tellraw @a {"text": "Оповещение: главная дверь открыта", "color": "yellow"}
