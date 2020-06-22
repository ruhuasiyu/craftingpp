execute unless block ~ ~ ~ composter run kill @s
execute if block ~ ~ ~ composter[level=7] run setblock ~ ~ ~ composter[level=8]
execute if block ~ ~ ~ composter[level=8] run function cpp:fermenter/done
