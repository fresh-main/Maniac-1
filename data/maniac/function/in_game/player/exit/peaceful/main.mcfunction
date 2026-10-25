execute if data storage efm switch{hunt:0} run function maniac:in_game/escape
execute if data storage efm switch{hunt:1} run title @s actionbar {"text": "Надо дождаться прибытия полиции","color": "yellow"}
execute if data storage efm switch{hunt:1} at @s run tp @s ~-0.9 ~ ~