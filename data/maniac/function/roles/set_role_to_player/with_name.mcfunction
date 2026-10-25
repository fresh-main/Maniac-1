scoreboard players set temp global_data 0
$function maniac:ztrash/roles/set_role {role:"$(role)",player:"$(player)",checkRole:true,checkPlayer:true,sendFeedback:true}
execute if score temp global_data matches 0 run tellraw @s {"text":" Ошибка! Проверьте корректность введённого ника и названия роли, они может содержать только латинские буквы, цифры, нижние подчёркивания и не должны быть пустым", "color": "red"}
