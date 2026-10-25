execute if score medkits_per_player config matches 0 run return fail
$item replace block -154 -63 -2 container.$(temp) with copper_ingot[item_name='{"color":"red","text":"Таблетки"}',consumable={animation:"eat",consume_seconds:3.0f,has_consume_particles:false,sound:{range:0f,sound_id:"minecraft:entity.generic.eat"}},item_model="med_box"]
execute store result storage efm temp byte 1 run scoreboard players remove temp global_data 1
execute if score temp global_data matches 1.. run function maniac:in_game/generation/medkit with storage efm