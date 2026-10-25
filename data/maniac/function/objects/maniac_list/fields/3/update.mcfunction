execute if score maniac_count config matches 2 run function maniac:objects/maniac_list/fields/3/hide
execute if score maniac_count config matches 3.. if data storage efm maniac_list[2].s{name:""} run function maniac:objects/maniac_list/fields/3/show
data modify entity @n[tag=maniac3] text set value '{"storage": "efm","nbt": "maniac_list[2].s.name"}'