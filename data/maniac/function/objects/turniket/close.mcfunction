setblock -125 10 15 minecraft:iron_trapdoor[open=false,facing=south,half=top]
setblock -125 10 16 minecraft:iron_trapdoor[open=false,facing=north,half=top]
setblock -125 10 18 minecraft:iron_trapdoor[open=false,facing=south,half=top]
setblock -125 10 19 minecraft:iron_trapdoor[open=false,facing=north,half=top]
data modify storage efm switch.turniketOpen set value 0
playsound block.iron_trapdoor.close master @a -125 10 15
playsound block.iron_trapdoor.close master @a -125 10 16
playsound block.iron_trapdoor.close master @a -125 10 18
playsound block.iron_trapdoor.close master @a -125 10 19