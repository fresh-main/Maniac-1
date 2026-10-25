execute store result storage efm temp byte 1 run scoreboard players operation @s game_health = maniac_max_hp config
function maniac:in_game/player/health/macros_settings with storage efm
give @s iron_axe[unbreakable={show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:2,id:"maniac:damage",operation:"add_value",type:"minecraft:attack_damage",slot:"mainhand"}]}]
item replace entity @s armor.head with chainmail_helmet[item_name='"Маска маньяка"',attribute_modifiers={show_in_tooltip:false,modifiers:[{id:"maniac:protection",amount:0,operation:"add_value",type:"armor",slot:"head"}]},enchantments={levels:{binding_curse:1},show_in_tooltip:false},unbreakable={show_in_tooltip:false},enchantment_glint_override=false]
attribute @s attack_damage base set 0
attribute @s attack_speed base set 20
scoreboard players operation @s stamina.max = maniac.stamina.max config
scoreboard players operation @s stamina.sprint.consumption = maniac.stamina.sprint config
scoreboard players operation @s stamina.jump.consumption = maniac.stamina.jump config
scoreboard players set @s stamina.regeneration 1
scoreboard players operation @s stamina = @s stamina.max
execute store result storage minecraft:efm temp int 0.2 run scoreboard players get @s stamina.max
execute store result score @s stamina.threshold.debuff run data get storage minecraft:efm temp
xp set @s 129 levels
xp set @s 1000 points
xp set @s 0 levels