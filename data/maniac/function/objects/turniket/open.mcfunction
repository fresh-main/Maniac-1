setblock -125 10 15 minecraft:iron_trapdoor[open=true,facing=south,half=top]
setblock -125 10 16 minecraft:iron_trapdoor[open=true,facing=north,half=top]
setblock -125 10 18 minecraft:iron_trapdoor[open=true,facing=south,half=top]
setblock -125 10 19 minecraft:iron_trapdoor[open=true,facing=north,half=top]
data modify storage efm switch.turniketOpen set value 1
playsound block.iron_trapdoor.open master @a -125 10 15
playsound block.iron_trapdoor.open master @a -125 10 16
playsound block.iron_trapdoor.open master @a -125 10 18
playsound block.iron_trapdoor.open master @a -125 10 19
tellraw @a {"text": "Турникеты открыты", "color": "yellow"}