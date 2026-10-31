execute if score boat_used global_data matches 0 unless entity @e[tag=escape_boat] run function maniac:objects/boat/spawn
execute as @a[tag=boat_rider] unless data entity @s RootVehicle run function maniac:objects/boat/leave_seat
