advancement revoke @s only maniac:crowbar_hit
execute unless score game_state global_data matches 1 run return 0
execute unless entity @s[team=peaceful] run return 0
execute unless items entity @s weapon.mainhand minecraft:tripwire_hook[minecraft:custom_data~{key:"монтировка"}] run return 0
execute if score @s crowbar_cooldown matches 1.. run return run title @s actionbar {"text":"Монтировка ещё перезаряжается","color":"gray"}
scoreboard players set @s crowbar_cooldown 200
scoreboard players set @s crowbar_seconds 10
execute as @a[team=maniac,distance=..3.5,sort=nearest,limit=1] at @s run function maniac:in_game/player/crowbar/stun
playsound minecraft:block.anvil.land player @a[distance=..12] ~ ~ ~ 0.8 1.4
title @s actionbar {"text":"Маньяк оглушён! Монтировка перезаряжается 10 секунд","color":"gold"}
