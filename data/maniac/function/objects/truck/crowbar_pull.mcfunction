# Вторая стадия: запуск двигателя
execute unless score truck_crowbar_stage global_data matches 1 run return 0
execute unless items entity @s weapon.mainhand minecraft:tripwire_hook[minecraft:custom_data~{key:"монтировка"}] run return run title @s actionbar {"text":"Возьмите монтировку в руку","color":"yellow"}
playsound maniac:truck.engine_start master @a ~ ~ ~ 1.0 1.0
scoreboard players set truck_engine_timer global_data 0
scoreboard players set truck_engine_starting global_data 1
scoreboard players set truck_crowbar_stage global_data 2
kill @e[tag=truck_fuel_interaction]
kill @e[tag=truck_crowbar_display]
