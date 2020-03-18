function cpp:misc/loc_front/pos
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] if block ~ ~ ~ chest if data block ~ ~ ~ Items[{id:"minecraft:chest"}].tag.BlockEntityTag run title @s actionbar {"translate":"info.cpp.chest_transporter.no_nesting"}
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] if block ~ ~ ~ chest unless data block ~ ~ ~ Items[{id:"minecraft:chest"}].tag.BlockEntityTag run function cpp:tool/chest_transporter
kill @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] 
