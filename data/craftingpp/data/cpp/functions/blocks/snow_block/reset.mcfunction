advancement revoke @s only cpp:blocks/snow_block
execute if score #skyislandMode cppValue matches 1 run data modify storage cpp:loc_block Item.id set value "minecraft:snow_block"
execute if score #skyislandMode cppValue matches 1 run function cpp:misc/loc/pos
execute if score #skyislandMode cppValue matches 1 at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] align xyz run function cpp:blocks/snow_block/done
execute if score #skyislandMode cppValue matches 1 run kill @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos]
