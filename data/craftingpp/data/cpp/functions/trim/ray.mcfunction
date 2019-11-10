execute as @s[distance=..6] if block ~ ~ ~ #container:all align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.1] run function cpp:trim/pre
execute as @s[distance=..6] unless block ~ ~ ~ #container:all positioned ^ ^ ^0.005 anchored feet run function cpp:trim/ray
