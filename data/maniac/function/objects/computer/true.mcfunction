data modify storage minecraft:efm switch.pcInputWorking set value 0
function maniac:objects/big_door/open
data modify entity @n[tag=text_message] text set value '{"text":">SUCCESSFULL_","color":"green"}'
schedule function maniac:objects/computer/back 30t
playsound minecraft:entity.player.levelup master @a ~ ~ ~