$execute if score $(score) config matches 0 run data modify entity @n[tag=$(tag)_display] text set value '{"text":"Завод"}'
$execute if score $(score) config matches 1 run data modify entity @n[tag=$(tag)_display] text set value '{"text":"Лагерь"}'
