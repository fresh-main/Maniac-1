fill -135 1 1 -141 4 1 polished_deepslate_wall
fill -135 1 1 -141 1 1 air
tellraw @a {"text": "Дверь в подвале открыта", "color": "yellow"}
playsound minecraft:block.piston.contract master @a -138 1 1
schedule function maniac:objects/big_door/open1 1s
schedule function maniac:objects/big_door/open2 2s
schedule function maniac:objects/big_door/open3 3s
data modify storage efm switch.bigDoorOpen set value 1