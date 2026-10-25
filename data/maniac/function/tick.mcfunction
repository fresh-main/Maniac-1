execute if score game_state global_data matches 0 run function maniac:out_game/tick
execute if score game_state global_data matches 1 run function maniac:in_game/tick
execute as @a unless score @s game_count = total game_count run function maniac:join/select
execute store result score playerCount1 global_data if entity @a
execute unless score playerCount1 global_data = playerCount2 global_data run function maniac:player/check

execute as @e[type=interaction] if data entity @s attack at @s run function maniac:in_game/attack
execute as @a[scores={crowbar_cooldown=1..}] run function maniac:in_game/player/crowbar/cooldown_tick
execute if data storage efm switch{tube:1} at @n[tag=phone_tube] unless entity @a[distance=..2,predicate=maniac:tube_check] run function maniac:objects/phone/tube/place
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{item:"tube"}}}}]

#execute at @a[gamemode=spectator] run particle crit ~ ~1.3 ~

execute if score phone_timer1 global_data matches 1.. as @n[nbt={SelectedItem:{components:{"minecraft:custom_data":{item:"tube"}}}}] run function maniac:in_game/timer/phone_timer1
execute if score phone_timer2 global_data matches 1.. as @n[nbt={SelectedItem:{components:{"minecraft:custom_data":{item:"tube"}}}}] run function maniac:in_game/timer/phone_timer2
execute if score phone_timer3 global_data matches 1.. as @n[nbt={SelectedItem:{components:{"minecraft:custom_data":{item:"tube"}}}}] run function maniac:in_game/timer/phone_timer3

execute as @a[predicate=maniac:w,gamemode=spectator,tag=spectating] at @s as @n[distance=...1,type=item_display] rotated as @s run rotate @s ~ ~-1
execute as @a[predicate=maniac:s,gamemode=spectator,tag=spectating] at @s as @n[distance=...1,type=item_display] rotated as @s run rotate @s ~ ~1
execute as @a[predicate=maniac:d,gamemode=spectator,tag=spectating] at @s as @n[distance=...1,type=item_display] rotated as @s run rotate @s ~-1 ~
execute as @a[predicate=maniac:a,gamemode=spectator,tag=spectating] at @s as @n[distance=...1,type=item_display] rotated as @s run rotate @s ~1 ~
execute as @a[predicate=maniac:shift,gamemode=spectator,tag=spectating] run function maniac:objects/camera/dis_spectate

execute as @e[tag=break] rotated as @s run rotate @s ~ ~5
particle ash ~ ~ ~ ~ ~ ~ 0 1 normal


execute if score stamina config matches 1 as @a run function maniac:in_game/player/stamina/stamina
