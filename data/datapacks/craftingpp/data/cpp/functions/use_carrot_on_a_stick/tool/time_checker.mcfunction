scoreboard players operation #remove_xp_value cppValue = #time_checker_xp cppValue
function cpp:xp/remove_check
tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":[{"score":{"objective":"cppValue","name":"#time_checker_xp"}}]}
execute as @s[tag=cpp_has_enough_xp] run time add 60s
tag @s remove cpp_has_enough_xp