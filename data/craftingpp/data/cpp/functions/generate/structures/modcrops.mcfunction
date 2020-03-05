summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp","cpp_wild_grass"]}

spreadplayers ~ ~ 0 3 false @e[type=armor_stand,tag=cpp_temp]
execute as @e[type=armor_stand,tag=cpp_temp] at @s unless block ~ ~-1 ~ grass_block run kill @s
execute as @e[type=armor_stand,tag=cpp_temp] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ acacia_sapling

setblock ~ 255 ~ chest
loot replace block ~ 255 ~ container.0 1 loot cpp:generate/mod_seeds
execute store result score #t cppValue run data get block ~ 255 ~ Items[0].tag.CustomModelData
execute store result block ~ 255 ~ Items[0].tag.CustomModelData int 1 run scoreboard players add #t cppValue 5000
execute if score #t cppValue matches 12975001..12975020 run tag @e[type=armor_stand,tag=cpp_temp,distance=..15] add cpp_crops
execute as @e[type=armor_stand,tag=cpp_temp,distance=..15] run data modify entity @s ArmorItems[3] set from block ~ 255 ~ Items[0]
setblock ~ 255 ~ air
tag @e[tag=cpp_temp] remove cpp_temp
