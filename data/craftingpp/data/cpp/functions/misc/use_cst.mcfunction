execute as @s[predicate=cpp:mainhand_carrot_on_a_stick] run function cpp:misc/use_cst_mainhand
execute as @s[predicate=!cpp:mainhand_carrot_on_a_stick] run function cpp:misc/use_cst_offhand
scoreboard players reset @s cppUseCSt
