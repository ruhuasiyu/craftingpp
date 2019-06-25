summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_temp"],ArmorItems:[{},{},{},{}]}
data modify entity @e[tag=cpp_plants,tag=cpp_temp,distance=..0.1,limit=1] ArmorItems[3] set from entity @s Item
execute store result score @s cppValue run data get entity @e[tag=cpp_plants,tag=cpp_temp,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData
execute as @s[scores={cppValue=0}] run tag @e[tag=cpp_plants,tag=cpp_temp,distance=..0.1,limit=1] add cpp_acacia_sapling

scoreboard players set @s[scores={cppValue=0}] cppValue 12970099
scoreboard players add @s[scores={cppValue=12970001..12970020}] cppValue 3000
scoreboard players remove @s[scores={cppValue=12973081..12973100}] cppValue 20
scoreboard players remove @s[scores={cppValue=12970111..12970116}] cppValue 10

execute store result entity @e[tag=cpp_plants,tag=cpp_temp,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s cppValue
data modify entity @e[tag=cpp_plants,tag=cpp_temp,distance=..0.1,limit=1] ArmorItems[3].Count set value 1b

tag @e[tag=cpp_temp] remove cpp_temp
