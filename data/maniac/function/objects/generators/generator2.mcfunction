data modify storage efm switch.secondGeneratorWorking set value 1
data modify storage efm statistic.gen2 set value " on"
function maniac:objects/computer/statistic_update
tellraw @a {"text": "Оповещение: генератор на 2 этаже запущен", "color": "yellow"}
playsound minecraft:entity.experience_orb.pickup master @a -137.00 19.35 15.30
