summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_crops","cpp_block","cpp_temp","cpp_wild_grass"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_crops","cpp_block","cpp_temp","cpp_wild_grass"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_crops","cpp_block","cpp_temp","cpp_wild_grass"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_crops","cpp_block","cpp_temp","cpp_wild_grass"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_crops","cpp_block","cpp_temp","cpp_wild_grass"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_crops","cpp_block","cpp_temp","cpp_wild_grass"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_crops","cpp_block","cpp_temp","cpp_wild_grass"]}
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_crops","cpp_block","cpp_temp","cpp_wild_grass"]}

spreadplayers ~ ~ 0 3 false @e[type=armor_stand,tag=cpp_temp]
execute as @e[type=armor_stand,tag=cpp_temp] at @s unless block ~ ~-1 ~ grass_block run kill @s
execute as @e[type=armor_stand,tag=cpp_temp] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~-1 ~ farmland
execute as @e[type=armor_stand,tag=cpp_temp] at @s if block ~ ~-1 ~ farmland run setblock ~ ~ ~ pumpkin_stem

setblock ~ 255 ~ chest
loot replace block ~ 255 ~ container.0 1 loot cpp:generate/mod_seeds
execute store result score #temp cppValue run data get block ~ 255 ~ Items[0].tag.CustomModelData
execute store result block ~ 255 ~ Items[0].tag.CustomModelData int 1 run scoreboard players add #temp cppValue 3000
execute as @e[type=armor_stand,tag=cpp_temp,distance=..15] run data modify entity @s ArmorItems[3] set from block ~ 255 ~ Items[0]
setblock ~ 255 ~ air
tag @e[tag=cpp_temp] remove cpp_temp
say 1