scoreboard players remove phone_timer3 global_data 1
execute if score phone_timer3 global_data matches 50 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score phone_timer3 global_data matches 40 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score phone_timer3 global_data matches 30 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score phone_timer3 global_data matches 20 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score phone_timer3 global_data matches 10 at @s run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 1 0.2
execute if score phone_timer3 global_data matches 0 run function maniac:objects/phone/reset_display