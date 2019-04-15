scoreboard players add @s cppValue 1
execute as @s[scores={cppValue=150..299}] run setblock ~ ~2 ~ water[level=7]
execute as @s[scores={cppValue=300..349}] run setblock ~ ~2 ~ water[level=6]
execute as @s[scores={cppValue=450..599}] run setblock ~ ~2 ~ water[level=5]
execute as @s[scores={cppValue=600..749}] run setblock ~ ~2 ~ water[level=4]
execute as @s[scores={cppValue=750..899}] run setblock ~ ~2 ~ water[level=3]
execute as @s[scores={cppValue=900..1049}] run setblock ~ ~2 ~ water[level=2]
execute as @s[scores={cppValue=1050..1199}] run setblock ~ ~2 ~ water[level=1]
execute as @s[scores={cppValue=1200..}] run setblock ~ ~2 ~ water
execute as @s[scores={cppValue=1200..}] run tag @s remove cpp_bsd_water
execute as @s[scores={cppValue=1200..}] run scoreboard players reset @s cppValue
