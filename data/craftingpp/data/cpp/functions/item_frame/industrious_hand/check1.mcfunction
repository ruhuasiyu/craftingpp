tag @s remove cpp_industrious_hand_has_seeds
execute at @s if block ~ ~-1 ~ #container:all if predicate cpp:industrious_hand/seeds run tag @s add cpp_industrious_hand_has_seeds
execute as @s[tag=cpp_industrious_hand_has_seeds] run function cpp:item_frame/industrious_hand/check_block
