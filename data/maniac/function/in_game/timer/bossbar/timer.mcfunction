execute store result bossbar minecraft:timer value run scoreboard players get bossbar_timer global_data
scoreboard players operation var1 math = bossbar_timer global_data
scoreboard players operation var2 math = bossbar_timer global_data
scoreboard players operation var2 math %= 60 const
scoreboard players operation var2 math *= 10 const
execute store result storage minecraft:efm bossbar.minutes int 1 run scoreboard players operation var1 math /= 60 const
execute store result storage minecraft:efm bossbar.seconds float 0.001 run scoreboard players add var2 math 1
data modify storage minecraft:efm bossbar.seconds set string storage minecraft:efm bossbar.seconds 2 -2
function maniac:in_game/timer/bossbar/set_name with storage minecraft:efm bossbar
scoreboard players remove bossbar_timer global_data 1
execute if score bossbar_timer global_data matches -1 run function maniac:in_game/timer/bossbar/end