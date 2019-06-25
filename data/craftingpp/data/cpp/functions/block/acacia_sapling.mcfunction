advancement revoke @s only cpp:block/acacia_sapling
execute at @s anchored eyes run function cpp:block/acacia_sapling_ray
execute as @e[tag=cpp_plant_pos] at @s if entity @e[tag=cpp_plants,distance=..0.1] positioned ~1 ~ ~ if block ~ ~ ~ acacia_sapling unless entity @e[tag=cpp_plants,distance=..0.1] run tp @s ~ ~ ~
execute as @e[tag=cpp_plant_pos] at @s if entity @e[tag=cpp_plants,distance=..0.1] positioned ~-1 ~ ~ if block ~ ~ ~ acacia_sapling unless entity @e[tag=cpp_plants,distance=..0.1] run tp @s ~ ~ ~
execute as @e[tag=cpp_plant_pos] at @s if entity @e[tag=cpp_plants,distance=..0.1] positioned ~ ~ ~1 if block ~ ~ ~ acacia_sapling unless entity @e[tag=cpp_plants,distance=..0.1] run tp @s ~ ~ ~
execute as @e[tag=cpp_plant_pos] at @s if entity @e[tag=cpp_plants,distance=..0.1] positioned ~ ~ ~-1 if block ~ ~ ~ acacia_sapling unless entity @e[tag=cpp_plants,distance=..0.1] run tp @s ~ ~ ~

execute at @e[tag=cpp_plant_pos] run function cpp:block/acacia_sapling_done
