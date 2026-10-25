execute on target at @s run summon item ~ ~ ~ {Tags:["temp"],Item:{id:"stone",count:1}}
execute on target run data modify storage efm temp set from entity @s UUID
execute on vehicle run function maniac:in_game/item_pickup/item_pickup
kill @s
