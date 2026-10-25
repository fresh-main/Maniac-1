execute unless score main_exit_switch config matches 1 run return run title @s actionbar {"text":"Данный способ побега отключён", "color":"red"}
execute if data storage efm switch{electricity:0} run return run title @s actionbar [{"text":"Турникет не работает, похоже надо заглянуть в ","color":"yellow"},{"text":"электрощитовую","color":"gold"}]
execute if data storage efm switch{turniketOpen:1} run return run function maniac:objects/turniket/close
function maniac:objects/turniket/open