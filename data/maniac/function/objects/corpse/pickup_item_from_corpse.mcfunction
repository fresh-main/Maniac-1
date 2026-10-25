execute on target run data modify storage efm temp set from entity @s UUID
execute unless data entity @s Passengers[].data.Items[] on target run return run title @s actionbar {"text":"Кажется у него ничего нет...", "color": "yellow"}
execute if data entity @s Passengers[].data.Items[] run function maniac:objects/corpse/iterating
execute at @s run playsound minecraft:item.bundle.drop_contents master @a ~ ~ ~
execute on passengers run kill @s