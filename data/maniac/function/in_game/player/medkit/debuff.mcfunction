scoreboard players operation temp global_data = @s count_medkit_used
scoreboard players operation temp global_data -= max_medkits_using config
execute if score temp global_data matches 1.. run effect give @s nausea 10 0 true
execute if score temp global_data matches 2.. run scoreboard players remove @s game_health 2