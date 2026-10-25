execute unless score @s game_health = @s health run function maniac:in_game/player/health/set
execute as @s[team=maniac] at @s run function maniac:in_game/maniac
execute if score maniac_stamina_switch config matches 1 \
    as @s[team=maniac] \
    unless score @s stan_time matches 1.. \
    run function maniac:in_game/player/stamina/stamina
execute if score survivor_stamina_switch config matches 1 \
    as @s[team=peaceful] \
    run function maniac:in_game/player/stamina/stamina
execute as @s[scores={refueling=1..}] run function maniac:in_game/refueling
execute as @s[scores={regeneration=0..}] run function maniac:in_game/timer/regeneration_timer
execute as @s[scores={stan_time=1..}] run function maniac:in_game/player/maniac/attributes_back
execute as @s[scores={death=1..}] at @s run function maniac:in_game/player/death/death

execute as @s[team=peaceful,x=-143,y=0,z=-18,dx=10,dy=3,dz=2] run function maniac:in_game/player/exit/peaceful/basement
execute as @s[team=maniac,x=-143,y=0,z=-18,dx=10,dy=3,dz=2] run function maniac:in_game/player/exit/maniac/basement
execute as @s[team=police,x=-143,y=0,z=-18,dx=10,dy=3,dz=2] run function maniac:in_game/player/exit/police/basement

execute as @s[team=peaceful,x=-119,y=9,z=14,dx=2,dy=3,dz=5] run function maniac:in_game/player/exit/peaceful/main
execute as @s[team=maniac,x=-119,y=9,z=14,dx=2,dy=3,dz=5] run function maniac:in_game/player/exit/maniac/main
execute as @s[team=police,x=-119,y=9,z=14,dx=2,dy=3,dz=5] run function maniac:in_game/player/exit/police/main

#Побег через вертолёт
execute as @s[team=peaceful,x=-166,y=29,z=-7,dx=6,dy=1,dz=2] run function maniac:in_game/escape



#execute if score hunt_status global_data matches 1 run execute as @a[team=Hub,tag=!just_spectator] run function maniac:in_game/player/police/stay_police
#execute if score hunt_status global_data matches 3 run execute as @a[team=Hub,tag=!just_spectator] run function maniac:in_game/player/police/stay_police