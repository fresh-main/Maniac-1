data modify storage minecraft:efm switch.pcInputWorking set value 0
data modify entity @n[tag=text_message] text set value '{"text":">INVALID PASSWORD_","color":"red"}'
schedule function maniac:objects/computer/back 30t
playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 1 0.8