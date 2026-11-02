data modify storage efm switch.checkpointGenerator1 set value 1
tellraw @a {"text":"Оповещение: генератор КПП №1 запущен","color":"yellow"}
playsound minecraft:entity.experience_orb.pickup master @a 30 9 -179
