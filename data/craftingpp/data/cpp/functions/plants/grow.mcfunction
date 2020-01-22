setblock ~ ~ ~ acacia_sapling
execute store result score #t cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players add @s cppValue 1
execute if score @s cppValue >= $modTreeAgeMax cppConfig if score #t cppValue matches 12970101 run function cpp:plants/trees/fruit
execute if score @s cppValue >= $modTreeAgeMax cppConfig if score #t cppValue matches 12970102 run function cpp:plants/trees/ore
execute if score @s cppValue >= $modTreeAgeMax cppConfig if score #t cppValue matches 12970103 run function cpp:plants/trees/wool
