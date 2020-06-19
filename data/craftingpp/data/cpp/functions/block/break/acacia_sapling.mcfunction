execute store result score @s cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players remove @s cppValue 4000
scoreboard players remove @s[scores={cppValue=12971021..12971040}] cppValue 20
scoreboard players remove @s[scores={cppValue=12971041..12971060}] cppValue 40
execute as @s[tag=cpp_rice] run function cpp:block/break/rice
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s cppValue
data modify entity @e[type=item,sort=nearest,predicate=cpp:item/dropped_acacia_sapling,limit=1,distance=..2] Item set from entity @s ArmorItems[3]
kill @s
