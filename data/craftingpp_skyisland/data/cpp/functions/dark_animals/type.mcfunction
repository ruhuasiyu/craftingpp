execute as @s[tag=!cpp_dark_animal_checked] run function cpp:dark_animals/check
execute as @s[tag=cpp_dark_animal] at @s if entity @a[distance=..1] run function cpp:dark_animals/attack
