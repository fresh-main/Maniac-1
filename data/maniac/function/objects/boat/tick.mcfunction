execute in minecraft:overworld if score boat_used global_data matches 0 if data storage efm boat.spawned unless entity @e[tag=escape_boat] run tellraw @a [{"text":"[Лодка] Tick обнаружил маркер без корпуса; сброс и повторная попытка","color":"red"}]
execute in minecraft:overworld if score boat_used global_data matches 0 if data storage efm boat.spawned unless entity @e[tag=escape_boat] run function maniac:objects/boat/cleanup
execute in minecraft:overworld if score boat_used global_data matches 0 unless data storage efm boat.spawned run function maniac:objects/boat/spawn
execute as @a[tag=boat_rider] unless data entity @s RootVehicle run function maniac:objects/boat/leave_seat
