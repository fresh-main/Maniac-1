# Полное завершение текущей игры
# Важно: end_extra запускает генерацию и spawn, поэтому здесь он не вызывается.

# Удаление всех объектов текущей игры
kill @e[tag=truck_display]
kill @e[tag=truck_fuel_interaction]
kill @e[tag=truck_crowbar_interaction]
kill @e[tag=truck_crowbar_display]
kill @e[tag=escape_boat]
kill @e[tag=boat_display]
kill @e[tag=boat_seat_1]
kill @e[tag=boat_seat_2]
kill @e[tag=boat_seat_3]
kill @e[tag=boat_seat_4]
kill @e[tag=boat_motor_interaction]
kill @e[tag=boat_motor_display]
kill @e[type=!player,tag=boat_rider]
kill @e[tag=radio_display]
kill @e[tag=radio_interaction]
kill @e[tag=motor_table_interaction]
kill @e[tag=motor_table_display]
kill @e[tag=motor_assembly_display]
kill @e[tag=crowbar_hitbox]
kill @e[tag=player_doll_model]
kill @e[tag=boat_seat]
kill @e[tag=boat_seat_interaction]
kill @e[tag=boat_motor_interaction]
kill @e[tag=boat_motor_display]
kill @e[tag=corpse]
kill @e[type=item]
execute in minecraft:overworld run function maniac:objects/boat/cleanup

# Сброс игровых scoreboard-значений
scoreboard players set game_state global_data 0
scoreboard players set escaped global_data 0
scoreboard players set truck_fuel global_data 0
scoreboard players set truck_crowbar_stage global_data 0
scoreboard players set truck_engine_timer global_data 0
scoreboard players set truck_engine_starting global_data 0
scoreboard players set truck_moving global_data 0
scoreboard players set truck_moving_timer global_data 0
scoreboard players set boat_used global_data 0
scoreboard players set boat_spawn_attempt global_data 0
scoreboard players set boat_motor global_data 0
scoreboard players set boat_fuel global_data 0
scoreboard players set boat_seats global_data 0
scoreboard players set boat_motor_installed global_data 0
scoreboard players set boat_seats_occupied global_data 0
scoreboard players set boat_escape_ready global_data 0
scoreboard players set motor_stage global_data 0
scoreboard players set radio_charge global_data 0
scoreboard players set radio_call_state global_data 0
scoreboard players set radio_call_timer global_data 0
scoreboard players set hunt_status global_data 0
scoreboard players set police_status global_data 0
scoreboard players set bossbar_timer global_data -1
scoreboard players set elevator1_timer global_data -1
scoreboard players set elevator2_timer global_data -1
scoreboard players set phone_char_pos global_data 0
scoreboard players set phone_timer1 global_data 0
scoreboard players set phone_timer2 global_data 0
scoreboard players set phone_timer3 global_data 0
scoreboard players set pc_char_pos global_data 0
scoreboard players set camera_break_time global_data 0
scoreboard players set limit_camera_break global_data 0
scoreboard players set playerCount1 global_data 0
scoreboard players set playerCount2 global_data 0
scoreboard players set policeman_count global_data 0
scoreboard players set maniac_count global_data 0
scoreboard players set temp global_data 0
scoreboard players set #boat_fuel_added global_data 0

# Сброс transient-данных efm без удаления конфигурации и точек лодки
data remove storage efm boat.spawned
data remove storage efm Pos
data remove storage efm temp
data remove storage efm statistic
data remove storage efm camera_status
data modify storage efm switch set value {}
data remove storage efm boat
data remove storage efm boat_location_0
data remove storage efm boat_location_1

# Возврат ворот грузовика в закрытое состояние
fill -45 8 -40 -45 11 -38 minecraft:iron_bars

# Сброс личных игровых scoreboard-значений
scoreboard players reset @a game_health
scoreboard players reset @a regeneration
scoreboard players reset @a jump
scoreboard players reset @a refueling
scoreboard players reset @a stan_time
scoreboard players reset @a death
scoreboard players reset @a count_medkit_used
scoreboard players reset @a camera_break_time
scoreboard players reset @a pickup_timer
scoreboard players reset @a crowbar_cooldown
scoreboard players reset @a crowbar_seconds
scoreboard players reset @a stamina
scoreboard players reset @a stamina.max
scoreboard players reset @a stamina.jump.consumption
scoreboard players reset @a stamina.sprint.consumption
scoreboard players reset @a stamina.regeneration
scoreboard players reset @a stamina.threshold.debuff

# Игроки возвращаются в полностью очищенное состояние лобби
clear @a
effect clear @a
xp set @a 0 levels
xp set @a 0 points

tag @e remove break
tag @a remove temp
tag @a remove boat_rider
tag @a remove boat_seated
tag @a remove truck_driver
tag @a remove spectating
tag @a remove just_spectator
tag @a remove break
tag @a remove in_game

gamemode adventure @a
team join Hub @a
tp @a -22 8 13 90 0
spawnpoint @a -22 8 13 90
title @a title {"text":"Игра остановлена","color":"gray"}