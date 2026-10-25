scoreboard players set temp global_data 0
$function maniac:ztrash/roles/add_role {checkCopies:true,sendFeedback:true,role:"$(role)"}
execute if score temp global_data matches 0 run tellraw @s {"text":" Ошибка! Проверьте введённое название роли, оно может содержать только латинские буквы, цифры, нижние подчёркивания и не должно быть пустым", "color": "red"}