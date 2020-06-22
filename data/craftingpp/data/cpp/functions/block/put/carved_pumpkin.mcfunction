function cpp:misc/loc/pos
data modify storage cpp:block Item.Count set value 1b
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] at @s align xyz positioned ~0.5 ~ ~0.5 run function cpp:block/destroy
