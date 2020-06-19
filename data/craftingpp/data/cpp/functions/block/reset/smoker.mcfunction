advancement revoke @s only cpp:block/smoker
scoreboard players set #block_id cppValue 9
function cpp:misc/loc/pos
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos] at @s align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Age:0,Duration:2147483647,Tags:["cpp_aec_marker","cpp_smoker"]}
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos]
