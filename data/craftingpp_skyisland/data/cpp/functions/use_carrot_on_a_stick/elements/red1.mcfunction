advancement grant @s only cpp:elements
execute if block ~ ~ ~ #cpp:red_force_smeltable3 run function cpp:use_carrot_on_a_stick/elements/red3
execute if block ~ ~ ~ #cpp:red_force_smeltable2[half=lower] run function cpp:use_carrot_on_a_stick/elements/red3
execute if block ~ ~ ~ #cpp:red_force_smeltable2[half=upper] positioned ~ ~-1 ~ run function cpp:use_carrot_on_a_stick/elements/red3
execute if block ~ ~ ~ carrots run function cpp:use_carrot_on_a_stick/elements/red4
execute if block ~ ~ ~ acacia_sapling align xyz positioned ~0.5 ~ ~0.5 as @e[tag=cpp_plants,distance=..0.5] run function cpp:use_carrot_on_a_stick/elements/red2
execute unless block ~ ~ ~ acacia_sapling run setblock ~ ~ ~ air
