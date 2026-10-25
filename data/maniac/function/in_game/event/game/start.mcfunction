data modify storage efm switch.bossbar set value "game"
execute store result storage minecraft:efm temp int 60 run scoreboard players get game_duration config
execute store result bossbar minecraft:timer max store result score bossbar_timer global_data run data get storage minecraft:efm temp
bossbar set minecraft:timer color white
bossbar set minecraft:timer visible true