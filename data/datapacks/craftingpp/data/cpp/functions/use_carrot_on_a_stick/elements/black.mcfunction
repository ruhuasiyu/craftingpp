scoreboard players operation #remove_xp_value cppValue = #black_force_of_moon_xp cppValue
function cpp:xp/remove_check
tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":[{"score":{"objective":"cppValue","name":"#black_force_of_moon_xp"}}]}
execute as @s[tag=cpp_has_enough_xp] at @s run function cpp:use_carrot_on_a_stick/elements/black1
tag @s remove cpp_has_enough_xp