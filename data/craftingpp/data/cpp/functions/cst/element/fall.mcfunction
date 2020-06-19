function cpp:misc/loc_front/pos
execute at @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] align xyz run function cpp:cst/element/fall_done
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] 
