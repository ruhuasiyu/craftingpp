tag @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] add cpp_portable_crafting_table
loot give @s[gamemode=!creative] loot cpp:portable_crafting_table
data modify entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData set value 12970000
