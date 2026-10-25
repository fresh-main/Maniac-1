execute store result score temp global_data run data get storage efm:roles list
execute if score temp global_data matches 0 run return run tellraw @s " Нет ни одной роли"
tellraw @s " Список ролей:"
execute store result storage minecraft:efm i int 1 run scoreboard players remove temp global_data 1
function maniac:ztrash/roles/get_roles/cycle with storage minecraft:efm