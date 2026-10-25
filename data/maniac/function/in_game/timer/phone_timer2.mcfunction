scoreboard players remove phone_timer2 global_data 1
execute if score phone_timer2 global_data matches 329..381 at @s run title @s actionbar [{"text":"[Полиция]","color": "blue"},{"text": " Ало, капитан полиции Незич слушает", "color": "yellow"}]
execute if score phone_timer2 global_data matches 303..328 at @s run title @s actionbar [{"text":"[Полиция]","color": "blue"},{"text": " Что у вас случилось?", "color": "yellow"}]
execute if score phone_timer2 global_data matches 233..302 at @s run title @s actionbar [{"text":"[","color": "green"},{"selector":"@s","color": "green"},{"text":"]","color": "green"},{"text": " Пожалуйста помогите! Я заперт на заброшенном заводе", "color": "yellow"}]
execute if score phone_timer2 global_data matches 214..234 at @s run title @s actionbar [{"text":"[","color": "green"},{"selector":"@s","color": "green"},{"text":"]","color": "green"},{"text": " И здесь маньяк...", "color": "yellow"}]
execute if score phone_timer2 global_data matches 181..213 at @s run title @s actionbar [{"text":"[","color": "green"},{"selector":"@s","color": "green"},{"text":"]","color": "green"},{"text": " Он хочет-т... хочет меня убить", "color": "yellow"}]
execute if score phone_timer2 global_data matches 133..180 at @s run title @s actionbar [{"text":"[Полиция]","color": "blue"},{"text": " Так, опишите место где вы находитесь?", "color": "yellow"}]
execute if score phone_timer2 global_data matches 85..132 at @s run title @s actionbar [{"text":"[","color": "green"},{"selector":"@s","color": "green"},{"text":"]","color": "green"},{"text": " Это заброшенный завод на горе Сина", "color": "yellow"}]
execute if score phone_timer2 global_data matches 37..84 at @s run title @s actionbar [{"text":"[Полиция]","color": "blue"},{"text": " Хорошо, скоро туда прибудет вертолёт", "color": "yellow"}]
execute if score phone_timer2 global_data matches 1..36 at @s run title @s actionbar [{"text":"[Полиция]","color": "blue"},{"text": " Продержитесь до его прибытия", "color": "yellow"}]
execute if score phone_timer2 global_data matches 0 run title @s actionbar ""
execute if score phone_timer2 global_data matches 0 run function maniac:in_game/event/hunt/start
execute if score phone_timer2 global_data matches 0 run scoreboard players set phone_timer3 global_data 60