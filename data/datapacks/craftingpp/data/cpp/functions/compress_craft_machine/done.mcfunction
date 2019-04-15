execute as @s[scores={cppOutputFace=1}] positioned ~1 ~ ~ run function cpp:compress_craft_machine/to_chest
execute as @s[scores={cppOutputFace=2}] positioned ~ ~ ~1 run function cpp:compress_craft_machine/to_chest
execute as @s[scores={cppOutputFace=3}] positioned ~-1 ~ ~ run function cpp:compress_craft_machine/to_chest
execute as @s[scores={cppOutputFace=4}] positioned ~ ~ ~-1 run function cpp:compress_craft_machine/to_chest
execute as @s[scores={cppOutputFace=5}] positioned ~ ~-1 ~ run function cpp:compress_craft_machine/to_chest
execute as @s[scores={cppOutputFace=6}] positioned ~ ~1 ~ run function cpp:compress_craft_machine/to_chest

execute as @s[scores={cppSlotsDown=26..}] run function cpp:compress_craft_machine/to_self

scoreboard players reset @s cppSlotsDown
