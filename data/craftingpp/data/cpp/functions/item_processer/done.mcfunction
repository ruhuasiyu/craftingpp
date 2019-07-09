execute as @s[scores={cppOutputFace=1}] positioned ~1 ~ ~ run function cpp:item_processer/to_chest
execute as @s[scores={cppOutputFace=2}] positioned ~ ~ ~1 run function cpp:item_processer/to_chest
execute as @s[scores={cppOutputFace=3}] positioned ~-1 ~ ~ run function cpp:item_processer/to_chest
execute as @s[scores={cppOutputFace=4}] positioned ~ ~ ~-1 run function cpp:item_processer/to_chest
execute as @s[scores={cppOutputFace=5}] positioned ~ ~-1 ~ run function cpp:item_processer/to_chest
execute as @s[scores={cppOutputFace=6}] positioned ~ ~1 ~ run function cpp:item_processer/to_chest

effect give @s[scores={cppSlotsDown=26..}] glowing 1

scoreboard players reset @s cppSlotsDown
