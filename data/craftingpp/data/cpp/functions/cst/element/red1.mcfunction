advancement grant @s only cpp:elements
execute if block ~ ~ ~ #cpp:red_force_smeltable3 run function cpp:cst/element/red3
execute if block ~ ~ ~ #cpp:red_force_smeltable2[half=lower] run function cpp:cst/element/red3
execute if block ~ ~ ~ #cpp:red_force_smeltable2[half=upper] positioned ~ ~-1 ~ run function cpp:cst/element/red3
execute if block ~ ~ ~ carrots run function cpp:cst/element/red4
execute if block ~ ~ ~ pumpkin_stem[age=0] align xyz positioned ~0.5 ~ ~0.5 as @e[tag=cpp_crops,distance=..0.5] run function cpp:cst/element/red2
execute unless block ~ ~ ~ pumpkin_stem run setblock ~ ~ ~ air
