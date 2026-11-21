execute unless score camera_switch config matches 1 run return run title @s actionbar [{"text":"Камеры отключены в этой игре","color":"red"}]
$execute unless entity @e[tag=camera_l1_$(camera)] run return run title @s actionbar {"text":"Камера не найдена: проверьте тег camera_l1_$(camera)","color":"red"}
$function maniac:objects/camera/test_camera/return_status {camera:$(camera)}
execute if score temp global_data matches 1 run return run title @s actionbar [{"text":"Камера занята","color":"yellow"}]
execute if score temp global_data matches -1 run return run title @s actionbar [{"text":"Нет сигнала от камеры","color":"yellow"}]
function maniac:untils/get_name
data modify storage efm temp set from entity @s Rotation[0]
summon item_display ~ ~ ~ {item:{id:"minecraft:stone",components:{item_model:"man_camera"}},transformation:{scale:[0.97f,0.97f,0.97f],translation:[0.f,0.5f,0f],left_rotation:[0.f,0f,0f,1f],right_rotation:[0.f,0f,0f,1f]},Tags:["temp","player_doll_model"],Passengers:[{id:interaction,height:1.8f,width:0.6f,Tags:["player_doll"]},{id:marker}]}
execute as @n[tag=temp] run function maniac:objects/camera/modify_doll
tag @s add spectating
gamemode spectator @s
item replace entity @s armor.head with carved_pumpkin[item_name='"Камера"']
$spectate @n[tag=camera_l1_$(camera)] @s
$function maniac:objects/camera/set_camera_status {camera:$(camera),status:1}
$tp @s @n[type=item_display,nbt={Passengers:[{data:{player:$(name)}}]}]
$execute as @n[type=item_display,nbt={Passengers:[{data:{player:$(name)}}]}] run function maniac:objects/camera/remove_doll
effect give @s invisibility 1 0 true
