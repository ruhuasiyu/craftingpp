data modify storage cpp:loc_block Item.Count set value 1b
function cpp:misc/loc/pos
execute as @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] at @s align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/put
