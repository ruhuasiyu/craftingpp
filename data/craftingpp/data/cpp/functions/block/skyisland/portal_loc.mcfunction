function cpp:misc/loc_front/pos
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~ ~1 ~ if block ~ ~ ~ fire run function cpp:block/skyisland/portal_pos
kill @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos]