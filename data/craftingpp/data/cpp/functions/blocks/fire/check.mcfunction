data modify storage cpp:loc_block Item.id set value "minecraft:fire"
function cpp:misc/loc/pos
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~-1 ~ ~-1 run function cpp:blocks/fire/done
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~-1 ~ ~ run function cpp:blocks/fire/done
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~-1 ~ ~1 run function cpp:blocks/fire/done
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~ ~ ~-1 run function cpp:blocks/fire/done
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] run function cpp:blocks/fire/done
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~ ~ ~1 run function cpp:blocks/fire/done
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~1 ~ ~-1 run function cpp:blocks/fire/done
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~1 ~ ~ run function cpp:blocks/fire/done
execute at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] positioned ~1 ~ ~1 run function cpp:blocks/fire/done
kill @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos]
