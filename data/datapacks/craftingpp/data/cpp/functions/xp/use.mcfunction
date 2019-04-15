execute as @s[tag=cpp_has_compressed_xp] at @s anchored eyes as @e[type=experience_bottle,sort=nearest,limit=1] run function cpp:xp/throw64
scoreboard players reset @s cppUseXpBottle
