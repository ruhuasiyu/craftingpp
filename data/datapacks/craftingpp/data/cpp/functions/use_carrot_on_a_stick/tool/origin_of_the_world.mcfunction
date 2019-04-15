scoreboard players operation #remove_xp_value cppValue = #origin_of_the_world_xp cppValue
function cpp:xp/remove_check
tellraw @s[tag=!cpp_has_enough_xp] {"translate":"item.cpp.elements.fail","with":[{"score":{"objective":"cppValue","name":"#origin_of_the_world_xp"}}]}
execute in overworld run tp @s[tag=cpp_has_enough_xp] 0 -2 0
execute as @s[tag=cpp_has_enough_xp] run function cpp:use_carrot_on_a_stick/tool/tp_origin
execute as @s[tag=cpp_has_enough_xp] if data entity @s SpawnX run function cpp:use_carrot_on_a_stick/tool/tp_spawn
tag @s remove cpp_has_enough_xp