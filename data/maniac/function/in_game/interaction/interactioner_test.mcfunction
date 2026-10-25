execute on target as @s[team=!maniac] run return 1
execute as @s[tag=Item_interact] on target run title @s actionbar {"text":"Мне это не нужно...","color": "yellow"}
execute as @s[tag=corpse] on target run title @s actionbar {"text":"У него не может быть ничего полезного...","color": "yellow"}
execute as @s[tag=num] on target run title @s actionbar {"text":"Я не стану им помогать","color": "yellow"}
execute as @s[tag=phone_interaction] on target run title @s actionbar {"text":"Я не стану им помогать","color": "yellow"}
execute as @s[tag=locked_doors] on target run playsound block.chest.locked block @s ~ ~ ~
execute as @s[tag=locked_doors] on target run title @s actionbar {"text":"Дверь заперта","color": "yellow"}
data remove entity @s interaction