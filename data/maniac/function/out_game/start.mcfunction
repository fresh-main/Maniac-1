kill @e[tag=corpse]
clear @a
effect clear @a
effect give @a saturation infinite 0 true
effect give @a regeneration 2 127 true
kill @e[type=item]
execute as @e[tag=player_doll_model] run function maniac:objects/camera/remove_doll
tag @a remove spectating
tag @e remove break
tag @a remove just_spectator

execute if score maniac_count config matches 1 run function maniac:out_game/team_set {maniac_count : 1, global_count : 6}
execute if score maniac_count config matches 2 run function maniac:out_game/team_set {maniac_count : 2, global_count : 10}
execute if score maniac_count config matches 3 run function maniac:out_game/team_set {maniac_count : 3, global_count : 14}

execute if score safe_switch config matches 1 run function maniac:in_game/event/safezone/safe
execute if score safe_switch config matches 0 run function maniac:in_game/event/safezone/danger

execute if score light_switch config matches 1 run function maniac:objects/light/on
execute if score light_switch config matches 0 run function maniac:objects/light/off

execute as @a run function maniac:in_game/player/stamina/dedebuff

execute as @a[team=peaceful] run function maniac:in_game/player/peaceful/settings
execute as @a[team=maniac] run function maniac:in_game/player/maniac/settings

data modify storage efm switch.firstGeneratorWorking set value 0
data modify storage efm switch.secondGeneratorWorking set value 0
data modify storage efm switch.checkpointGenerator1 set value 0
data modify storage efm switch.checkpointGenerator2 set value 0
data modify storage efm switch.elevatorWorking set value 0
data modify storage efm switch.electricity set value 0
data modify storage efm switch.phoneHasConnection set value 0
data modify storage efm switch.hunt set value 0
data modify storage efm switch.bossbar set value ""
data modify storage efm switch.police set value 0

scoreboard players set game_state global_data 1
scoreboard players add total game_count 1
scoreboard players add @a game_count 1
scoreboard players set escaped global_data 0
scoreboard players set boat_used global_data 0
scoreboard players set boat_spawn_attempt global_data 0
scoreboard players set boat_motor global_data 0
scoreboard players set boat_fuel global_data 0
scoreboard players set boat_seats global_data 0
execute in minecraft:overworld run function maniac:objects/boat/cleanup
tag @a remove boat_rider
scoreboard players set @a count_medkit_used 0
scoreboard players set limit_camera_break global_data 12

data modify storage efm statistic set value {gen1:"off", gen2:"off", elevator:"Elevator is not working!"}
function maniac:objects/computer/statistic_update
function maniac:objects/doors/reload
kill @e[tag=motor_assembly_display]
scoreboard players set motor_stage global_data 0

function maniac:objects/gl_door/close
function maniac:objects/resistor/back_fix
function maniac:objects/turniket/close
function maniac:objects/computer/code_generation
function maniac:objects/big_door/close
function maniac:objects/computer/back
function maniac:objects/wire/back_fix
function maniac:objects/phone/reset_display
function maniac:objects/camera_pc/display/floor_one
function maniac:objects/camera_pc/debug/reload

function maniac:in_game/generation
execute positioned -29 17 -56 run function maniac:objects/motor_table/spawn
function maniac:in_game/spawn
schedule function maniac:out_game/clear 1s
schedule function maniac:out_game/clear 2s
setblock -152 1 5 minecraft:cauldron
setblock -138 19 15 minecraft:cauldron
execute if score location_index config matches 1 run setblock -52 7 -187 minecraft:air
execute if score location_index config matches 1 run setblock 30 9 -179 minecraft:cauldron
execute if score location_index config matches 1 run setblock 9 9 -173 minecraft:cauldron

rotate @n[tag=camera_0] 135 15
rotate @n[tag=camera_1] -135 45
rotate @n[tag=camera_2] 45 30
rotate @n[tag=camera_3] -150 45

rotate @n[tag=camera_4] -25 20
rotate @n[tag=camera_5] -135 35
rotate @n[tag=camera_6] 50 40
rotate @n[tag=camera_7] 14 21

rotate @n[tag=camera_8] -64 19
rotate @n[tag=camera_9] -24 50
rotate @n[tag=camera_10] -120 42
rotate @n[tag=camera_11] 110 42

data modify storage minecraft:efm phone_num set value {"text":"","font":"uniform","color":"#00FF00"}

data modify storage efm camera_status set value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

execute if score game_time_switch config matches 1 run function maniac:in_game/event/game/start

tellraw @a[team=peaceful] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"\u273f Вы мирный \u273f","bold":true,"color":"green"},{"text":"\n\nСбегите от маньяка, для этого вы можете\nсобирать предметы и прятаться в безопасные\nзоны, кооперируйтесь с другими выжившими\nдля того чтобы повысить ваши шансы"}]
tellraw @a[team=maniac] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"\u2620 Вы маньяк \u2620","bold":true,"color":"red"},{"text":"\n\nНе дайте сбежать выжившим,\nвы можете убивать их, но вы\nне можете проходить в сейв-зоны\nи бить игроков находящихся в них"}]

