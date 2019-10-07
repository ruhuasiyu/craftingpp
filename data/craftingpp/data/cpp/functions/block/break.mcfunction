execute as @s[predicate=cpp:as/acacia_sapling] run function cpp:block/break_acacia_sapling
execute as @s[predicate=cpp:as/oak_sign] run function cpp:block/break_oak_sign
execute as @s[tag=cpp_portable_crafting_table] run data remove entity @s ArmorItems[3]
execute as @s[tag=cpp_portable_crafting_machine] run data remove entity @s ArmorItems[3]
