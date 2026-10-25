data modify storage efm switch.hunt set value 1
data modify storage efm switch.bossbar set value "hunt"
$execute store result bossbar minecraft:timer max run scoreboard players set bossbar_timer global_data $(temp)
bossbar set minecraft:timer color red
bossbar set minecraft:timer visible true
#звуки музыки
tellraw @a {"text": "Скоро прибудет полиция. Маньяк впал в ярость и стал сильнее. Теперь он может пролезать в сейв-зоны, быстро бегать и убивать с одного удара. Будьте осторожны и продержитесь это время!", "color": "yellow"}

execute as @a[team=maniac] run function maniac:in_game/player/maniac/stan {tick:140,second:7}
$effect give @a[team=maniac] glowing $(temp) 0 true
$effect give @a[team=maniac] speed $(temp) 0 true

function maniac:in_game/event/safezone/danger
