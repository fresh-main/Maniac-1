scoreboard players set temp global_data 0
function maniac:untils/get_name
$data modify storage minecraft:efm tempSnbt set value {role:"$(role)",checkRole:true,checkPlayer:true,sendFeedback:true}
data modify storage minecraft:efm tempSnbt.player set from storage minecraft:efm name
function maniac:ztrash/roles/set_role with storage minecraft:efm tempSnbt
data remove storage minecraft:efm tempSnbt
execute if score temp global_data matches 0 run tellraw @s {"text":" Ошибка! Проверьте корректность названия роли, оно может содержать только латинские буквы, цифры, нижние подчёркивания и не должно быть пустым", "color": "red"}
