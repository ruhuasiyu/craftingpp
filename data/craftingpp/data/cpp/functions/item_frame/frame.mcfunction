execute as @s[predicate=cpp:invisible] unless data entity @s Item run data modify entity @s Invisible set value 0b
execute as @s[predicate=!cpp:invisible] if data entity @s Item run data modify entity @s Invisible set value 1b
