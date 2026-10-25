summon item_display ~ ~ ~ {Tags:["temp","Item"],Passengers:[{id:"interaction",Tags:["Item_interact"]}],item_display:"ground"}
execute as @e[tag=temp] run function maniac:in_game/item_spawn/replace