execute on target run item replace block -154 -63 -2 container.0 from entity @s weapon.mainhand
$execute if items block -154 -63 -2 container.0 minecraft:tripwire_hook[minecraft:custom_data~{key:"$(key)"}] unless data block -154 -63 -2 Items[0].components.minecraft:custom_data.doorUse run data modify block -154 -63 -2 Items[0].components.minecraft:custom_data.useCount set value 2
$execute if items block -154 -63 -2 container.0 minecraft:tripwire_hook[minecraft:custom_data~{key:"$(key)"}] unless data block -154 -63 -2 Items[0].components.minecraft:custom_data.doorUse run data modify block -154 -63 -2 Items[0].components.minecraft:custom_data.doorUse set value 1
execute store result score temp global_data run data get block -154 -63 -2 Items[0].components.minecraft:custom_data.useCount
execute store result block -154 -63 -2 Items[0].components.minecraft:custom_data.useCount int 1 run scoreboard players remove temp global_data 1
execute if score temp global_data matches 1.. run execute on target run item replace entity @s weapon.mainhand from block -154 -63 -2 container.0
item replace block -154 -63 -2 container.0 with air
execute if score temp global_data matches 1.. run return run execute on target run title @s actionbar [{"text":"Открыто, у ключа осталось ","color":"yellow"},{"score":{"name":"temp","objective":"global_data"},"color":"gold"},{"text":" использований","color":"yellow"}]
$execute on target run clear @s minecraft:tripwire_hook[minecraft:custom_data~{key:"$(key)"}] 1
