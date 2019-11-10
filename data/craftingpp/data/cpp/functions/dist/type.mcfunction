tag @s remove cpp_dist_success
execute as @s[scores={cppOutputFace=1}] positioned ~1 ~ ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[scores={cppOutputFace=2}] positioned ~ ~ ~1 if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[scores={cppOutputFace=3}] positioned ~-1 ~ ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[scores={cppOutputFace=4}] positioned ~ ~ ~-1 if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[scores={cppOutputFace=5}] positioned ~ ~-1 ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
execute as @s[scores={cppOutputFace=6}] positioned ~ ~1 ~ if block ~ ~ ~ #container:all run function cpp:dist/pos
