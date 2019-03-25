execute positioned ~1 ~ ~ if block ~ ~ ~ petrified_oak_slab[type=double] unless entity @e[tag=cpp_mixed_slabs,distance=..0.1] run tp @s ~ ~ ~
execute positioned ~-1 ~ ~ if block ~ ~ ~ petrified_oak_slab[type=double] unless entity @e[tag=cpp_mixed_slabs,distance=..0.1] run tp @s ~ ~ ~
execute positioned ~ ~ ~1 if block ~ ~ ~ petrified_oak_slab[type=double] unless entity @e[tag=cpp_mixed_slabs,distance=..0.1] run tp @s ~ ~ ~
execute positioned ~ ~ ~-1 if block ~ ~ ~ petrified_oak_slab[type=double] unless entity @e[tag=cpp_mixed_slabs,distance=..0.1] run tp @s ~ ~ ~
execute positioned ~ ~1 ~ if block ~ ~ ~ petrified_oak_slab[type=double] unless entity @e[tag=cpp_mixed_slabs,distance=..0.1] run tp @s ~ ~ ~
execute positioned ~ ~-1 ~ if block ~ ~ ~ petrified_oak_slab[type=double] unless entity @e[tag=cpp_mixed_slabs,distance=..0.1] run tp @s ~ ~ ~
tag @s remove cpp_mixed_slabs_schedule
execute at @s unless block ~ ~ ~ petrified_oak_slab[type=double] run function cpp:mixed_slabs/break
