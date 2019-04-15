scoreboard players operation #remove_xp_value cppValue = #yellow_force_of_earth_xp cppValue
function cpp:xp/remove_check
tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":[{"score":{"objective":"cppValue","name":"#yellow_force_of_earth_xp"}}]}
advancement grant @s[tag=cpp_has_enough_xp] only cpp:elements
execute as @s[tag=cpp_has_enough_xp] at @s run fill ~-7 ~-2 ~-7 ~7 ~ ~7 air replace #cpp:fluid
tag @s remove cpp_has_enough_xp