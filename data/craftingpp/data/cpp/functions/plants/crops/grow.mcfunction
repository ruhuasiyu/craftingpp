execute store result score #t cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score #t cppValue matches 12975041..12975060 run function cpp:plants/crops/hybrid
execute if score #t cppValue matches 12975001..12975060 run scoreboard players add #t cppValue 20
execute if score #t cppValue matches 12975021..12975080 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #t cppValue
