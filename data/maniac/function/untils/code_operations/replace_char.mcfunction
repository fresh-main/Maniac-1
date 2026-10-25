data modify storage efm converter.poststr set value ""
function maniac:untils/code_operations/str_to_nbt with storage efm converter
execute unless data storage efm converter.nbt.text run function maniac:untils/code_operations/convert_to_format
function maniac:untils/code_operations/get_pre_str with storage efm converter
execute store result score temp global_data run data get storage efm converter.nbt.text
execute store result score temp1 global_data run data get storage efm converter.char_pos
execute if score temp1 global_data < temp global_data run function maniac:untils/code_operations/pre_get_post_str
function maniac:untils/code_operations/create_new_str with storage efm converter
function maniac:untils/code_operations/nbt_to_str with storage efm converter
data remove storage efm converter.prestr
data remove storage efm converter.poststr