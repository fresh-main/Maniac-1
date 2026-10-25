function maniac:untils/get_name
scoreboard players set temp global_data 0
$data modify storage efm num set value $(num)
function maniac:objects/maniac_list/check with storage efm
function maniac:objects/maniac_list/remove_last_name with storage efm
$execute if score temp global_data matches 0 run data modify storage efm maniac_list[$(num)].s.name set from storage efm name
function maniac:objects/maniac_list/update