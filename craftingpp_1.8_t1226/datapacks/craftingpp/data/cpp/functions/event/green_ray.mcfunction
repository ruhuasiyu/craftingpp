execute if entity @s[distance=..5] unless block ~ ~ ~ #cpp:fluid run setblock ^ ^ ^-0.005 water
execute if entity @s[distance=..5] unless block ~ ~ ~ #cpp:fluid run xp add @s -1
execute if entity @s[distance=..5] if block ~ ~ ~ #cpp:fluid offset ^ ^ ^0.005 run function cpp:event/green_ray