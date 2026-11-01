execute if data storage efm switch{electricity:1} run data modify entity @e[tag=panel_indicator_green,limit=1] block_state.Name set value "minecraft:lime_concrete"
execute unless data storage efm switch{electricity:1} run data modify entity @e[tag=panel_indicator_green,limit=1] block_state.Name set value "minecraft:red_concrete"
