execute store result storage efm temp byte 1 store result score @s game_health run scoreboard players get player_max_hp config
function maniac:in_game/player/health/macros_settings with storage efm
attribute @s attack_damage base set 0
scoreboard players operation @s stamina.max = survivor.stamina.max config
scoreboard players operation @s stamina.sprint.consumption = survivor.stamina.sprint config
scoreboard players operation @s stamina.jump.consumption = survivor.stamina.jump config
scoreboard players set @s stamina.regeneration 1
scoreboard players operation @s stamina = @s stamina.max
execute store result storage minecraft:efm temp int 0.2 run scoreboard players get @s stamina.max
execute store result score @s stamina.threshold.debuff run data get storage minecraft:efm temp
xp set @s 129 levels
xp set @s 1000 points
xp set @s 0 levels