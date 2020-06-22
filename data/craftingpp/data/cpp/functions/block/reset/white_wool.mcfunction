advancement revoke @s only cpp:block/white_wool
scoreboard players set #block_id cppValue 3
execute as @s[predicate=cpp:in_overworld] run function cpp:misc/loc/pos
execute as @s[predicate=cpp:in_flower] run function cpp:misc/loc/pos
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] at @s align xyz if predicate cpp:flower_portal run function cpp:block/put/white_wool
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos]
