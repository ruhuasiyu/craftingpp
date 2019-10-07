execute store result score @s cppValue run data get entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData
scoreboard players remove @s[scores={cppValue=12970101..12970116}] cppValue 100
scoreboard players remove @s[scores={cppValue=12970201..12970216}] cppValue 200
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s cppValue
