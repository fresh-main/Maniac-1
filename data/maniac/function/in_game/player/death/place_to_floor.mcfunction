summon item_display ~ ~ ~ {item:{id:"minecraft:bundle",count:1,components:{"minecraft:item_model":"dead"}},transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f]},Tags:["corpse","temp"],Passengers:[{id:"minecraft:interaction",Tags:["corpse"],height:0.5f,width:0.8f,Passengers:[{id:"marker",Tags:["corpse","temp"],data:{Items:[]}}]}]}
data modify entity @n[tag=temp,type=marker] data.Items set from entity @s Passengers[0].data.Items
data modify entity @n[tag=temp,type=item_display] Rotation[0] set from entity @s Passengers[0].data.Rotation
tag @e remove temp
execute on passengers run kill @s
kill @s