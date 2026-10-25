execute if score maniac_count config matches 0 run function maniac:objects/maniac_list/fields/1/hide
execute if score maniac_count config matches 1.. if data storage efm maniac_list[0].s{name:""} run function maniac:objects/maniac_list/fields/1/show
data modify entity @n[tag=maniac1] text set value '{"storage": "efm","nbt": "maniac_list[0].s.name"}'