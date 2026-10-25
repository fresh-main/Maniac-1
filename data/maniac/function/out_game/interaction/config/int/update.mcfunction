$execute if score $(score) config matches $(min_count).. run data modify entity @n[tag=$(tag)_less] text set value '""'
$execute unless score $(score) config matches ..$(min_count) run data modify entity @n[tag=$(tag)_less] text set value '"<"'
$execute if score $(score) config matches ..$(max_count) run data modify entity @n[tag=$(tag)_more] text set value '""'
$execute unless score $(score) config matches $(max_count).. run data modify entity @n[tag=$(tag)_more] text set value '">"'

$data modify entity @n[tag=$(tag)_display] text set value '{"score": {"name": "$(score)", "objective": "config"}}'


$execute if data storage efm {maniac_count:"$(score)"} run function maniac:out_game/interaction/config/extra/maniac_count
$execute if data storage efm {location_setting:"$(score)"} run function maniac:out_game/interaction/config/int/location_update {score:$(score), tag:$(tag)}