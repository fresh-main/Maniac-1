execute store result storage minecraft:efm i int 1 run scoreboard players remove temp global_data 1
execute if score temp global_data matches 0.. run function maniac:ztrash/roles/get_roles/cycle with storage minecraft:efm
$tellraw @s [" - ",{"storage": "efm:roles", "nbt":"list[$(i)].role"}]