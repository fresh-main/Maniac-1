execute if data storage efm {max:1} run return run data modify storage efm random set value 0
$execute store result score temp global_data run random value 1..$(max)
execute store result storage efm random int 1 run scoreboard players remove temp global_data 1