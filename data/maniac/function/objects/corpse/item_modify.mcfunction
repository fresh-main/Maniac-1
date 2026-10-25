data modify entity @n[type=item,tag=temp] Item set from entity @s data.Items[0]
data modify entity @n[type=item,tag=temp] Thrower set from storage efm temp
data modify entity @n[type=item,tag=temp] Owner set from storage efm temp
scoreboard players set @n[type=item,tag=temp] pickup_timer 3
data remove entity @s data.Items[0]
tag @e[type=item,tag=temp] remove temp