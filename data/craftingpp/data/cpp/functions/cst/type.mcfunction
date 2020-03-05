execute as @s[predicate=cpp:carrot_on_a_stick_mainhand] run function cpp:cst/main
execute as @s[predicate=!cpp:carrot_on_a_stick_mainhand] run function cpp:cst/off
scoreboard players reset @s cppUseCSt
