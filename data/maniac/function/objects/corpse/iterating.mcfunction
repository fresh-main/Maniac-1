execute on target at @s run summon item ~ ~ ~ {Tags:["temp"],Item:{id:"stone",count:1}}
execute on passengers run function maniac:objects/corpse/item_modify
execute if data entity @s Passengers[].data.Items[] run function maniac:objects/corpse/iterating
