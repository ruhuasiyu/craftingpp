scoreboard players operation #remove_xp_value cppValue = #cyan_force_of_mountain_xp cppValue
function cpp:xp/remove_check
tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":[{"score":{"objective":"cppValue","name":"#cyan_force_of_mountain_xp"}}]}
execute as @s[tag=cpp_has_enough_xp] at @s run function cpp:use_carrot_on_a_stick/elements/cyan1
tag @s remove cpp_has_enough_xp