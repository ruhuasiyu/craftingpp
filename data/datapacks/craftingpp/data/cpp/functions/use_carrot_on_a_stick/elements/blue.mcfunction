scoreboard players operation #remove_xp_value cppValue = #blue_force_of_sky_xp cppValue
function cpp:xp/remove_check
tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":[{"score":{"objective":"cppValue","name":"#blue_force_of_sky_xp"}}]}
execute as @s[tag=cpp_has_enough_xp] run function cpp:use_carrot_on_a_stick/elements/blue1
tag @s remove cpp_has_enough_xp