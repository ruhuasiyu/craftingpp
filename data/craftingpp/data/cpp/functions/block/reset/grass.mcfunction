advancement revoke @s only cpp:block/grass
scoreboard players set #block_id cppValue 12
execute if score $skyislandMode cppConfig matches 1 run function cpp:misc/loc/pos
execute if score $skyislandMode cppConfig matches 1 as @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] at @s run function cpp:block/skyisland/grass_block
