advancement revoke @s only maniac:maniac_damaged
execute as @a[team=peaceful,distance=..4.5] if items entity @s weapon.mainhand minecraft:tripwire_hook[minecraft:custom_data~{key:"монтировка"}] run return 0
scoreboard players set @s game_health 0
