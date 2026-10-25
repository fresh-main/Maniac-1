bossbar set minecraft:timer visible false
data modify storage efm switch.bossbar set value ""
data modify storage efm switch.police set value 0
scoreboard players set hunt_status global_data 0
function maniac:in_game/end
title @a subtitle {"text":"Полиция упустила маньяка","color":"gray"}
