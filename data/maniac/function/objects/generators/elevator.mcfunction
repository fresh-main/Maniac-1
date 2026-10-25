data modify storage efm switch.elevatorWorking set value 1
data modify storage efm statistic.elevator set value "Elevator is working!    "
function maniac:objects/computer/statistic_update
tellraw @a {"text": "Оповещение: лифт запущен", "color": "yellow"}
