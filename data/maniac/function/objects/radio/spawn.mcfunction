kill @e[tag=radio_display]
kill @e[tag=radio_interaction]
clear @a spyglass[custom_data={item:"radio"}]
scoreboard players set radio_charge global_data 0
scoreboard players set radio_call_timer global_data 0
scoreboard players set radio_call_state global_data 0
summon item_display 39 30 -176 {Tags:["radio_display"],item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_model":"minecraft:radio"}},item_display:"ground",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0f,0f]},Passengers:[{id:"interaction",Tags:["radio_interaction"],width:0.8f,height:1.0f}]}
