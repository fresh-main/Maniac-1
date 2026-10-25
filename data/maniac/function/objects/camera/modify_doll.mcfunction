tag @s remove temp
data modify entity @s Rotation[0] set from storage efm temp
execute on passengers as @s[type=minecraft:marker] run data modify entity @s data.player set from storage efm name