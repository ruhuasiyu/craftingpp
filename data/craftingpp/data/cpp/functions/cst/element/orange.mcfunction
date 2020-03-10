function cpp:misc/loc_front/pos
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] if block ~ ~ ~ #cpp:dirt run function cpp:cst/element/orange1
kill @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] 
