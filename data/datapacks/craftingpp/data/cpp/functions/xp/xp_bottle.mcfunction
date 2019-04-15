scoreboard players operation #remove_xp_value cppValue = #xp_in_bottle cppValue
function cpp:xp/remove_check
give @s[tag=cpp_has_enough_xp] experience_bottle
tag @s remove cpp_has_enough_xp