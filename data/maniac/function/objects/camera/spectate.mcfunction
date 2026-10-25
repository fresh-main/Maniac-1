function maniac:untils/get_name
data modify storage efm temp set from entity @s Rotation[0]
summon item_display ~ ~ ~ {item:{id:"minecraft:stone",components:{item_model:"man_camera"}},transformation:{scale:[0.97f,0.97f,0.97f],translation:[0.f,0.5f,0f],left_rotation:[0.f,0f,0f,1f],right_rotation:[0.f,0f,0f,1f]},Tags:["temp","player_doll_model"],Passengers:[{id:interaction,height:1.8f,width:0.6f,Tags:["player_doll"]},{id:marker}]}
execute as @n[tag=temp] run function maniac:objects/camera/modify_doll
tag @s add spectating
gamemode spectator @s
item replace entity @s armor.head with carved_pumpkin[item_name='"Камера"']
$spectate @n[tag=camera_$(camera)] @s
$function maniac:objects/camera/set_camera_status {camera:$(camera),status:1}