data modify storage efm converter.nbt set from entity @n[tag=input_code] text
function maniac:untils/code_operations/str_to_nbt with storage efm converter
execute unless data storage efm converter.nbt.text run function maniac:untils/code_operations/convert_to_format
return run function maniac:objects/computer/password_test with storage efm converter