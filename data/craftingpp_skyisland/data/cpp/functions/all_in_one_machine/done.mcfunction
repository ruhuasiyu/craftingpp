tag @s remove cpp_wait_output

execute as @s[scores={cppOutputFace=1}] positioned ~1 ~ ~ run function cpp:all_in_one_machine/to_chest
execute as @s[scores={cppOutputFace=2}] positioned ~ ~ ~1 run function cpp:all_in_one_machine/to_chest
execute as @s[scores={cppOutputFace=3}] positioned ~-1 ~ ~ run function cpp:all_in_one_machine/to_chest
execute as @s[scores={cppOutputFace=4}] positioned ~ ~ ~-1 run function cpp:all_in_one_machine/to_chest
execute as @s[scores={cppOutputFace=5}] positioned ~ ~-1 ~ run function cpp:all_in_one_machine/to_chest
execute as @s[scores={cppOutputFace=6}] positioned ~ ~1 ~ run function cpp:all_in_one_machine/to_chest

tag @s[scores={cppSlotsDown=26..}] add cpp_wait_output
effect give @s[tag=cpp_wait_output] glowing 1

scoreboard players reset @s cppSlotsDown
scoreboard players reset @s[tag=!cpp_wait_output] cppTick
