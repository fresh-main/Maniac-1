scoreboard players operation @s item_glow_secs = @s item_glow_cd
scoreboard players add @s item_glow_secs 19
scoreboard players operation @s item_glow_secs /= #20 item_glow_math
title @s actionbar [{"text":"До подсветки: ","color":"gray"},{"score":{"name":"@s","objective":"item_glow_secs"},"color":"yellow"},{"text":" сек.","color":"gray"}]
