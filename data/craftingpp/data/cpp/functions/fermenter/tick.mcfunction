execute unless block ~ ~ ~ minecraft:composter run kill @s
execute if block ~ ~ ~ minecraft:composter[level=7] run setblock ~ ~ ~ composter[level=8]
execute if block ~ ~ ~ minecraft:composter[level=8] run function cpp:fermenter/done
