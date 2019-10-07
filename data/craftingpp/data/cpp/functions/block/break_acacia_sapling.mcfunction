execute store result score @s cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players remove @s[scores={cppValue=12973001..12973020}] cppValue 3000
scoreboard players remove @s[scores={cppValue=12973021..12973040}] cppValue 3020
scoreboard players remove @s[scores={cppValue=12973041..12973060}] cppValue 3040
scoreboard players add @s[scores={cppValue=12973061..12973080}] cppValue 20
scoreboard players add @s[scores={cppValue=12970100..12970106}] cppValue 10
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s cppValue
