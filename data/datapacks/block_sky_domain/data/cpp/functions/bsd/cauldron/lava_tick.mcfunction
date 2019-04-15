scoreboard players add @s cppValue 1
execute as @s[scores={cppValue=150..299}] run setblock ~ ~2 ~ lava[level=7]
execute as @s[scores={cppValue=300..349}] run setblock ~ ~2 ~ lava[level=6]
execute as @s[scores={cppValue=450..599}] run setblock ~ ~2 ~ lava[level=5]
execute as @s[scores={cppValue=600..749}] run setblock ~ ~2 ~ lava[level=4]
execute as @s[scores={cppValue=750..899}] run setblock ~ ~2 ~ lava[level=3]
execute as @s[scores={cppValue=900..1049}] run setblock ~ ~2 ~ lava[level=2]
execute as @s[scores={cppValue=1050..1199}] run setblock ~ ~2 ~ lava[level=1]
execute as @s[scores={cppValue=1200..}] run setblock ~ ~2 ~ lava
execute as @s[scores={cppValue=1200..}] run tag @s remove cpp_bsd_lava
execute as @s[scores={cppValue=1200..}] run scoreboard players reset @s cppValue
