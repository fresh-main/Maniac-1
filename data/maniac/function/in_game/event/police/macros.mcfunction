data modify storage efm switch.police set value 1
data modify storage efm switch.bossbar set value "police"
$execute store result bossbar minecraft:timer max run scoreboard players set bossbar_timer global_data $(temp)
bossbar set minecraft:timer color blue
bossbar set minecraft:timer visible true
tellraw @a {"text": "Полиция начала охоту на маньяка", "color": "yellow"}
scoreboard players set hunt_status global_data 3