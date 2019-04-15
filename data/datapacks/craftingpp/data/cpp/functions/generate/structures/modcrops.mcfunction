summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:1}}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:1}}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:1}}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:1}}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:1}}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:1}}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:1}}]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:1}}]}

spreadplayers ~ ~ 0 3 false @e[type=armor_stand,tag=cpp_temp]
execute as @e[type=armor_stand,tag=cpp_temp] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ acacia_sapling
execute as @e[type=armor_stand,tag=cpp_temp] at @s unless block ~ ~-1 ~ grass_block run kill @s

execute store result score @s cppValue run data get entity @s Item.Count
scoreboard players add @s cppValue 12973016
execute as @e[type=armor_stand,tag=cpp_temp,distance=..15] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @e[type=item,nbt={Item:{tag:{id:"cpp:modcrops_marker"}}},sort=nearest,limit=1] cppValue
tag @e[tag=cpp_temp] remove cpp_temp
