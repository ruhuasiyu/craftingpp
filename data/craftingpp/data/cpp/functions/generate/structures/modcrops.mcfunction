summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp","cpp_wild_grass"]}

spreadplayers ~ ~ 0 3 false @e[type=armor_stand,tag=cpp_temp]
execute as @e[type=armor_stand,tag=cpp_temp] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ acacia_sapling
execute as @e[type=armor_stand,tag=cpp_temp] at @s unless block ~ ~-1 ~ grass_block run kill @s

summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp2","cpp_wild_grass"]}
loot replace entity @e[type=armor_stand,tag=cpp_temp2,limit=1,sort=nearest,distance=..1] weapon.mainhand loot cpp:generate/mod_seeds
execute as @e[type=armor_stand,tag=cpp_temp2,limit=1,sort=nearest,distance=..1] store result score #temp cppValue run data get entity @s HandItems[0].tag.CustomModelData
execute as @e[type=armor_stand,tag=cpp_temp2,limit=1,sort=nearest,distance=..1] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players add #temp cppValue 3000

execute as @e[type=armor_stand,tag=cpp_temp,distance=..15] run data modify entity @s ArmorItems[3] set from entity @e[type=armor_stand,tag=cpp_temp2,limit=1,sort=nearest,distance=..1] HandItems[0]
kill @e[type=armor_stand,tag=cpp_temp2,limit=1]

tag @e[tag=cpp_temp] remove cpp_temp
