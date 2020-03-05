advancement revoke @s only cpp:block/snow_block
scoreboard players set #block_id cppValue 13
execute if score $skyislandMode cppConfig matches 1 run function cpp:misc/loc/pos
execute if score $skyislandMode cppConfig matches 1 at @e[type=armor_stand,distance=..9,tag=cpp_loc_block_pos] align xyz run function cpp:block/skyisland/snow_block

