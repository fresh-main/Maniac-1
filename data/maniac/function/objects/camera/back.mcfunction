$tp @s @n[type=item_display,nbt={Passengers:[{data:{player:$(name)}}]}]
$execute as @n[type=item_display,nbt={Passengers:[{data:{player:$(name)}}]}] run function maniac:objects/camera/remove_doll
effect give @s invisibility 1 0 true
