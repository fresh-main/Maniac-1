scoreboard players remove radio_call_timer global_data 1
execute if score radio_call_timer global_data matches 25..29 run title @a[team=peaceful] actionbar [{"text":"[Полиция] ","color":"blue"},{"text":"Алло, вас слышно?","color":"yellow"}]
execute if score radio_call_timer global_data matches 20..24 run title @a[team=peaceful] actionbar [{"text":"[Вы] ","color":"green"},{"text":"Помогите, маньяк держит нас здесь!","color":"yellow"}]
execute if score radio_call_timer global_data matches 15..19 run title @a[team=peaceful] actionbar [{"text":"[Полиция] ","color":"blue"},{"text":"Приняли. Направляем помощь.","color":"yellow"}]
execute if score radio_call_timer global_data matches 10..14 run title @a[team=peaceful] actionbar [{"text":"[Вы] ","color":"green"},{"text":"Пожалуйста, поторопитесь!","color":"yellow"}]
execute if score radio_call_timer global_data matches 1..9 run title @a[team=peaceful] actionbar [{"text":"[Полиция] ","color":"blue"},{"text":"Держитесь, помощь уже в пути.","color":"yellow"}]
execute if score radio_call_timer global_data matches 0 run title @a actionbar ""
execute if score radio_call_timer global_data matches 0 run scoreboard players set radio_call_state global_data 2
execute if score radio_call_timer global_data matches 0 run function maniac:in_game/event/hunt/start
