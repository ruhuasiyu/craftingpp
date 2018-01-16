execute if entity @s[distance=..5] unless block ~ ~ ~ #cpp:dirt offset ^ ^ ^0.005 run function cpp:event/orange_ray
execute if entity @s[distance=..5] if block ~ ~ ~ #cpp:dirt run xp add @s -1
execute if entity @s[distance=..5] if block ~ ~ ~ #cpp:dirt run setblock ~ ~ ~ air destroy