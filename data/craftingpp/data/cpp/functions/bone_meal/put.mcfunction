setblock ~ ~ ~ acacia_sapling
summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_block","cpp_temp"]}
loot replace entity @e[type=armor_stand,tag=cpp_temp,distance=..1,limit=1] armor.head 1 loot cpp:misc/wild_flower
execute store result score #t cppValue run data get entity @e[type=armor_stand,tag=cpp_temp,distance=..1,limit=1] ArmorItems[3].tag.CustomModelData
execute store result entity @e[type=armor_stand,tag=cpp_temp,distance=..1,limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #t cppValue 5000
tag @e[tag=cpp_temp] remove cpp_temp
