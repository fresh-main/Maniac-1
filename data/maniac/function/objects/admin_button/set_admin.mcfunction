execute if score admin_setted global_data matches 1 run return run title @s actionbar {"text":"Админ уже назначен","color": "yellow"}
title @s actionbar {"text":"Вы назначены админом","color": "yellow"}
tag @s add admin
execute at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 0.2
scoreboard players set admin_setted global_data 1