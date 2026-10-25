execute if score @s[team=maniac] stan_time matches 1.. run return fail

execute if score @s stamina matches ..1 run function maniac:in_game/player/stamina/debuff
execute if score @s stamina > @s stamina.threshold.debuff run function maniac:in_game/player/stamina/dedebuff
execute if score @s jump matches 1.. run function maniac:in_game/player/stamina/jump
execute if predicate maniac:sprint run scoreboard players operation @s stamina -= @s stamina.sprint.consumption
execute if score @s stamina < @s stamina.max run scoreboard players operation @s stamina += @s stamina.regeneration
scoreboard players set @s[scores={stamina=..-1}] stamina 0
scoreboard players operation @s stamina < @s stamina.max

scoreboard players set temp global_data 100000
execute store result storage efm temp double .01 run scoreboard players operation temp global_data /= @s stamina.max
function maniac:in_game/player/stamina/convert_to_xp with storage efm
function maniac:in_game/player/stamina/xpset with storage efm