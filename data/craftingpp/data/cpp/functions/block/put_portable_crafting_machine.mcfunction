tag @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] add cpp_portable_crafting_machine
loot replace entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] armor.head 1 loot cpp:crafting_machine
loot give @s[gamemode=!creative] loot cpp:portable_crafting_machine

