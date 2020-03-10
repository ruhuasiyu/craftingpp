function cpp:misc/loc_front/pos
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] if block ~ ~ ~ chest run function cpp:tool/chest_transporter
kill @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] 
