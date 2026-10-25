schedule function maniac:second 1s

execute if score game_state global_data matches 0 run function maniac:out_game/second
execute if score game_state global_data matches 1 run function maniac:in_game/second


execute if score bossbar_timer global_data matches 0.. run function maniac:in_game/timer/bossbar/timer
scoreboard players remove @e[scores={camera_break_time=1..}] camera_break_time 1