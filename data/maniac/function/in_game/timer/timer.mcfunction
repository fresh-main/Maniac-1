title @a actionbar [{"score":{"name": "timer", "objective": "global_data"}}]
scoreboard players remove timer global_data 1
execute if score timer global_data matches -1 run function maniac:in_game/timer/end_timer