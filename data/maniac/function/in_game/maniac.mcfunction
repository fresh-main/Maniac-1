execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~0.5 ~ ~
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~-0.5 ~ ~
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.5
execute if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.5
execute if data storage efm switch{hunt:1} if block ~ ~-2 ~ minecraft:magenta_glazed_terracotta run title @s actionbar {"text": "Я не сунусь туда!", "color": "red"}