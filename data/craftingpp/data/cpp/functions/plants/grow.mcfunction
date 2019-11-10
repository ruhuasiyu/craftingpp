setblock ~ ~ ~ acacia_sapling
execute store result score #t cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score #t cppValue matches 12973041..12973060 run function cpp:plants/hybrid
execute if score #t cppValue matches 12973001..12973060 run scoreboard players add #t cppValue 20
execute if score #t cppValue matches 12973021..12973080 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #t cppValue

scoreboard players add @s cppValue 1
execute if score @s cppValue >= #modTreeAgeMax cppValue if score #t cppValue matches 12970101 run function cpp:plants/trees/fruit
execute if score @s cppValue >= #modTreeAgeMax cppValue if score #t cppValue matches 12970102 run function cpp:plants/trees/ore
execute if score @s cppValue >= #modTreeAgeMax cppValue if score #t cppValue matches 12970103 run function cpp:plants/trees/wool
