data modify storage efm switch.firstGeneratorWorking set value 1
data modify storage efm statistic.gen1 set value " on"
function maniac:objects/computer/statistic_update
tellraw @a {"text": "Оповещение: генератор в подвале запущен", "color": "yellow"}
playsound minecraft:entity.experience_orb.pickup master @a -151.37 1.54 6.00
