execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run function cpp:cst/main
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run function cpp:cst/off
scoreboard players reset @s cppUseCSt
