scoreboard players remove @s stan_time 1
execute if score @s stan_time matches 1.. run return fail
attribute @s attack_speed base set 23
attribute @s attack_damage base set 0
attribute @s movement_speed base set 0.1
attribute @s jump_strength base set 0.42
