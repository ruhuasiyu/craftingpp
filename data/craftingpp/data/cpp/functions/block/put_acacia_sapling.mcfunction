execute store result score @s cppValue run data get entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData
execute as @s[scores={cppValue=12970000..12979999}] unless score @s cppValue matches 12970110 run tag @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] add cpp_plants
scoreboard players add @s[scores={cppValue=12970001..12970020}] cppValue 3000
scoreboard players remove @s[scores={cppValue=12973081..12973100}] cppValue 20
scoreboard players remove @s[scores={cppValue=12970110..12970116}] cppValue 10
execute store result entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s cppValue
