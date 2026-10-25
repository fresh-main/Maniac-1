$title @a actionbar [{"text": "$(message)","color":"yellow"},{"score":{"name": "$(type)_timer", "objective": "global_data"}},{"text": " секунд-(ы/а)"}]
$scoreboard players remove $(type)_timer global_data 1
$execute if score $(type)_timer global_data matches -1 run function maniac:in_game/timer/$(type)_end_timer