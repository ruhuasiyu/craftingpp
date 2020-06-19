function cpp:misc/loc_front/pos
execute at @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] if block ~ ~ ~ chest if data block ~ ~ ~ Items[].tag.BlockEntityTag run title @s actionbar {"translate":"info.cpp.chest_transporter.no_nesting"}
execute at @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] if block ~ ~ ~ chest unless data block ~ ~ ~ Items[].tag.BlockEntityTag align xyz run function cpp:tool/chest_transporter
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] 
