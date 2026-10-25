execute if score playerCount1 global_data > playerCount2 global_data run function maniac:player/join
execute if score playerCount1 global_data < playerCount2 global_data run function maniac:player/leave
scoreboard players operation playerCount2 global_data = playerCount1 global_data
