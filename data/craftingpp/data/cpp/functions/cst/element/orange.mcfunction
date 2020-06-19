function cpp:misc/loc_front/pos
execute at @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] if block ~ ~ ~ #cpp:orange_force_destroyable run function cpp:cst/element/orange1
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] 
