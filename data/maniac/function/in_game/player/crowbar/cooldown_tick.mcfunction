scoreboard players remove @s crowbar_cooldown 1
scoreboard players operation @s crowbar_seconds = @s crowbar_cooldown
scoreboard players add @s crowbar_seconds 19
scoreboard players operation @s crowbar_seconds /= #20 crowbar_math
execute if score @s crowbar_cooldown matches 1.. if items entity @s weapon.mainhand minecraft:tripwire_hook[minecraft:custom_data~{key:"монтировка"}] run title @s actionbar [{"text":"Монтировка ","color":"gray"},{"text":"⏳ ","color":"gold"},{"score":{"name":"@s","objective":"crowbar_seconds"},"color":"yellow"},{"text":"с","color":"yellow"}]
