data modify storage efm switch.tube set value 0
data modify storage efm switch.phoneHasConnection set value 0
function maniac:objects/phone/fix/off
execute at @n[tag=phone_station] run tp @e[tag=phone_tube] ~ ~ ~ ~ ~
execute at @n[tag=phone_station] run summon minecraft:interaction ^.197 ^0.063 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:1}}]}
execute at @n[tag=phone_station] run summon minecraft:interaction ^.06 ^0.063 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:2}}]}
execute at @n[tag=phone_station] run summon minecraft:interaction ^-.075 ^0.063 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:3}}]}

execute at @n[tag=phone_station] run summon minecraft:interaction ^.197 ^-.063 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:4}}]}
execute at @n[tag=phone_station] run summon minecraft:interaction ^.06 ^-.063 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:5}}]}
execute at @n[tag=phone_station] run summon minecraft:interaction ^-.075 ^-.063 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:6}}]}

execute at @n[tag=phone_station] run summon minecraft:interaction ^.197 ^-.187 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:7}}]}
execute at @n[tag=phone_station] run summon minecraft:interaction ^.06 ^-.187 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:8}}]}
execute at @n[tag=phone_station] run summon minecraft:interaction ^-.075 ^-.187 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:9}}]}

execute at @n[tag=phone_station] run summon minecraft:interaction ^.197 ^-0.312 ^.34 {width:.1,height:.1,Tags:["phone_interaction","phone_num"],Passengers:[{id:marker,Tags:["phone_interaction"],data:{num:0}}]}
execute at @n[tag=phone_station] run summon minecraft:interaction ^-.0075 ^-0.312 ^.405 {width:.23,height:.105,Tags:["phone_interaction","phone_Enter"]}

execute at @n[tag=phone_station] run summon minecraft:interaction ^-.197 ^-0.25 ^.28 {width:.1,height:.54,Tags:["phone_interaction","phone_tube_interaction"]}

execute at @n[tag=phone_station] run summon minecraft:interaction ^0.41 ^-.22 ^0.42 {width:.12,height:.24,Tags:["phone_interaction","phone_wire_interaction"]}