execute if score maniac_count config matches 1 run function maniac:objects/maniac_list/fields/2/hide
execute if score maniac_count config matches 2.. if data storage efm maniac_list[1].s{name:""} run function maniac:objects/maniac_list/fields/2/show
data modify entity @n[tag=maniac2] text set value '{"storage": "efm","nbt": "maniac_list[1].s.name"}'