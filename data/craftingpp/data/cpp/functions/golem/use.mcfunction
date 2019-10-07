execute as @s[predicate=cpp:has_hoe] if block ~ ~ ~ #cpp:air run function cpp:golem/use_hoe
execute as @s[predicate=cpp:has_axe] if block ~ ~ ~ #cpp:air run function cpp:golem/use_axe
execute as @s[predicate=cpp:has_shovel] if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~-1 ~ grass_path
execute as @s[predicate=cpp:has_shears] run function cpp:golem/use_shears
execute as @s[predicate=cpp:has_lead] if entity @e[type=#cpp:animals,distance=..1,nbt={Age:0,InLove:0}] run function cpp:golem/use_lead
execute as @s[predicate=cpp:has_fishing_rod] if block ~ ~ ~ minecraft:water run function cpp:golem/use_fishing_rod
