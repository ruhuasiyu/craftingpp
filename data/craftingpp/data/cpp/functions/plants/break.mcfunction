summon item ~ ~ ~ {Item:{id:"minecraft:acacia_sapling",Count:1b},Tags:["cpp_temp"]}
data modify entity @e[type=item,tag=cpp_temp,limit=1,distance=..0.01] Item set from entity @s ArmorItems[3]

execute store result score @s cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players remove @s[scores={cppValue=12973001..12973020}] cppValue 3000
scoreboard players remove @s[scores={cppValue=12973021..12973040}] cppValue 3020
scoreboard players remove @s[scores={cppValue=12973041..12973060}] cppValue 3040
scoreboard players add @s[scores={cppValue=12973061..12973080}] cppValue 20
scoreboard players add @s[scores={cppValue=12970101..12970106}] cppValue 10
execute store result entity @e[type=item,tag=cpp_temp,limit=1,distance=..0.01] Item.tag.CustomModelData int 1 run scoreboard players get @s cppValue
execute as @s[scores={cppValue=12970099}] run data remove entity @e[type=item,tag=cpp_temp,limit=1,distance=..0.01] Item.tag
execute as @s[scores={cppValue=12970099}] if block ~ ~ ~ acacia_log run kill @e[type=item,tag=cpp_temp,limit=1,distance=..0.01]

tag @e[tag=cpp_temp] remove cpp_temp
kill @s
