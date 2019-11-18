advancement revoke @s only cpp:blocks/grass
execute if score #skyislandMode cppValue matches 1 run data modify storage cpp:loc_block Item.id set value "minecraft:grass"
execute if score #skyislandMode cppValue matches 1 run function cpp:misc/loc/pos
execute if score #skyislandMode cppValue matches 1 as @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] at @s align xyz run function cpp:blocks/grass/done
