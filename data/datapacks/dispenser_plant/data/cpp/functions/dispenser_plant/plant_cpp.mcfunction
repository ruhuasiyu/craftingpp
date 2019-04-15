execute store result score @s cppValue run data get entity @s Item.tag.CustomModelData
execute as @s[scores={cppValue=0}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants","cpp_acacia_sapling"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:12970099}}]}

scoreboard players add @s[scores={cppValue=12970001..12970020}] cppValue 3000
scoreboard players remove @s[scores={cppValue=12973081..12973100}] cppValue 20
scoreboard players remove @s[scores={cppValue=12970111..12970116}] cppValue 10

execute as @s[scores={cppValue=12970101..12973080}] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_plants"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",Count:1b,tag:{CustomModelData:12971000}}]}
execute as @s[scores={cppValue=12970101..12973080}] store result entity @e[tag=cpp_plants,sort=nearest,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s cppValue
