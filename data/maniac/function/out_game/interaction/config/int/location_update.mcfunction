$execute if score $(score) config matches 0 run data modify entity @n[tag=$(tag)_display] text set value '{"text":"Завод"}'
$execute if score $(score) config matches 1 run data modify entity @n[tag=$(tag)_display] text set value '{"text":"Лагерь"}'
data modify entity @n[tag=location_display] background set value -16777216
data modify entity @n[tag=location_less] background set value -16777216
data modify entity @n[tag=location_more] background set value -16777216
$execute if score $(score) config matches 0 as @e[type=minecraft:text_display,x=-25.0625,y=11,z=3.0,distance=..0.05,limit=1] run tp @s -25.0625 11 2.875
$execute if score $(score) config matches 0 as @e[type=minecraft:text_display,x=-25.0625,y=10.6875,z=3.0,distance=..0.05,limit=1] run tp @s -25.0625 10.6875 2.5625
$execute if score $(score) config matches 0 as @e[type=minecraft:text_display,x=-25.0625,y=10.375,z=3.0,distance=..0.05,limit=1] run tp @s -25.0625 10.375 2.6875
$execute if score $(score) config matches 0 as @e[type=minecraft:text_display,x=-25.0625,y=10.0625,z=3.0,distance=..0.05,limit=1] run tp @s -25.0625 10.0625 2.8125
$execute if score $(score) config matches 0 run data modify entity @e[type=minecraft:text_display,x=-25.0625,y=11,z=2.875,distance=..0.05,limit=1] text set value '{"text":"Гл. выход"}'
$execute if score $(score) config matches 0 run data modify entity @e[type=minecraft:text_display,x=-25.0625,y=10.6875,z=2.5625,distance=..0.05,limit=1] text set value '{"text":"Лифт"}'
$execute if score $(score) config matches 0 run data modify entity @e[type=minecraft:text_display,x=-25.0625,y=10.375,z=2.6875,distance=..0.05,limit=1] text set value '{"text":"Ворота"}'
$execute if score $(score) config matches 0 run data modify entity @e[type=minecraft:text_display,x=-25.0625,y=10.0625,z=2.8125,distance=..0.05,limit=1] text set value '{"text":"Вертолёт"}'
$execute if score $(score) config matches 1 as @e[type=minecraft:text_display,x=-25.0625,y=11,z=2.875,distance=..0.05,limit=1] run tp @s -25.0625 11 3.0
$execute if score $(score) config matches 1 as @e[type=minecraft:text_display,x=-25.0625,y=10.6875,z=2.5625,distance=..0.05,limit=1] run tp @s -25.0625 10.6875 3.0
$execute if score $(score) config matches 1 as @e[type=minecraft:text_display,x=-25.0625,y=10.375,z=2.6875,distance=..0.05,limit=1] run tp @s -25.0625 10.375 3.0
$execute if score $(score) config matches 1 as @e[type=minecraft:text_display,x=-25.0625,y=10.0625,z=2.8125,distance=..0.05,limit=1] run tp @s -25.0625 10.0625 3.0
$execute if score $(score) config matches 1 run data modify entity @e[type=minecraft:text_display,x=-25.0625,y=11,z=3.0,distance=..0.05,limit=1] text set value '{"text":"Лодка"}'
$execute if score $(score) config matches 1 run data modify entity @e[type=minecraft:text_display,x=-25.0625,y=10.6875,z=3.0,distance=..0.05,limit=1] text set value '{"text":"Грузовик"}'
$execute if score $(score) config matches 1 run data modify entity @e[type=minecraft:text_display,x=-25.0625,y=10.375,z=3.0,distance=..0.05,limit=1] text set value '{"text":"Вертолёт"}'
$execute if score $(score) config matches 1 run data modify entity @e[type=minecraft:text_display,x=-25.0625,y=10.0625,z=3.0,distance=..0.05,limit=1] text set value '{"text":"КПП"}'
