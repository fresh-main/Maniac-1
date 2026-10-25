item replace block -154 -63 -2 container.0 from entity @s weapon.mainhand
execute store result score temp global_data run data get block -154 -63 -2 Items[0].components.minecraft:custom_data.useCount
execute store result block -154 -63 -2 Items[0].components.minecraft:custom_data.useCount int 1 run scoreboard players remove temp global_data 1
execute if score temp global_data matches 1.. run item replace entity @s weapon.mainhand from block -154 -63 -2 container.0
item replace block -154 -63 -2 container.0 with air
execute if score temp global_data matches 1.. run return run title @s actionbar [{"text":"Открыто, но ключ может","color":"yellow"},{"text":" ещё ","color":"gold"},{"text":"пригодиться"}]
item replace entity @s weapon.mainhand with air