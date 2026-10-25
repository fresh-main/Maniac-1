clear
effect clear
effect give @s regeneration infinite 127 true
team join police @s
gamemode adventure @s
scoreboard players add policeman_count global_data 1
execute if score location_index config matches 0 run function maniac:locations/location_0/police_spawn
execute if score location_index config matches 1 run function maniac:locations/location_1/police_spawn

execute store result storage efm temp byte 1 run scoreboard players operation @s game_health = player_max_hp config
function maniac:in_game/player/health/macros_settings with storage efm
give @s iron_sword[item_name='"Полицейская дубинка"',item_model="baton",unbreakable={show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:2,id:"maniac:damage",operation:"add_value",type:"minecraft:attack_damage",slot:"mainhand"}]}]
item replace entity @s armor.head with leather_helmet[unbreakable={show_in_tooltip:false},dyed_color={rgb:989595},item_name='"Полицейская фуражка"',enchantments={levels:{binding_curse:1},show_in_tooltip:false},enchantment_glint_override=false]
item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},dyed_color={rgb:989595},item_name='"Полицейская Форма"',enchantments={levels:{binding_curse:1},show_in_tooltip:false},enchantment_glint_override=false]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},dyed_color={rgb:989595},item_name='"Полицейская Форма"',enchantments={levels:{binding_curse:1},show_in_tooltip:false},enchantment_glint_override=false]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:false},dyed_color={rgb:989595},item_name='"Полицейская Форма"',enchantments={levels:{binding_curse:1},show_in_tooltip:false},enchantment_glint_override=false]
attribute @s attack_damage base set 0
attribute @s attack_speed base set 20

execute if data storage efm switch{bossbar:""} run function maniac:in_game/event/police/start
execute if score hunt_status global_data matches 1 run scoreboard players set hunt_status global_data 2
execute if score hunt_status global_data matches 2 run function maniac:in_game/event/police/start_hunt