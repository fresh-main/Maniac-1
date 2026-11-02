scoreboard players remove radio_call_timer global_data 1
execute if score radio_call_timer global_data matches 161..199 run title @a[team=peaceful] actionbar [{"text":"[Полиция] ","color":"blue"},{"text":"Алло, вас слышно?","color":"yellow"}]
execute if score radio_call_timer global_data matches 121..160 run title @a[team=peaceful] actionbar [{"text":"[Вы] ","color":"green"},{"text":"Помогите, маньяк держит нас здесь!","color":"yellow"}]
execute if score radio_call_timer global_data matches 81..120 run title @a[team=peaceful] actionbar [{"text":"[Полиция] ","color":"blue"},{"text":"Приняли. Направляем помощь.","color":"yellow"}]
execute if score radio_call_timer global_data matches 41..80 run title @a[team=peaceful] actionbar [{"text":"[Вы] ","color":"green"},{"text":"Пожалуйста, поторопитесь!","color":"yellow"}]
execute if score radio_call_timer global_data matches 1..40 run title @a[team=peaceful] actionbar [{"text":"[Полиция] ","color":"blue"},{"text":"Держитесь, помощь уже в пути.","color":"yellow"}]
execute if score radio_call_timer global_data matches 0 run title @a actionbar ""
execute if score radio_call_timer global_data matches 0 run scoreboard players set radio_call_state global_data 2
execute if score radio_call_timer global_data matches 0 run function maniac:in_game/event/hunt/start
