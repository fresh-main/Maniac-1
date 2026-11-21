execute if score @s item_glow_cd matches 1.. run function maniac:in_game/item_glow/cooldown
execute unless score @s item_glow_cd matches 1.. run function maniac:in_game/item_glow/activate
