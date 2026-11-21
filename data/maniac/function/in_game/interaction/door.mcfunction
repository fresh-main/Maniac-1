execute if function maniac:objects/door/item_check run return run function maniac:objects/door/closed_door with entity @s Passengers[0].data
function maniac:objects/door/key_use with entity @s Passengers[0].data
execute on passengers run function maniac:objects/door/kill_tree
kill @e[distance=...1,type=interaction]
playsound block.wooden_door.open master @a ~ ~ ~
