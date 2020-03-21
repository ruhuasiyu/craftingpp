scoreboard players set #random_min cppValue 1
scoreboard players set #random_max cppValue 20
function cpp:random
execute store result score #temp cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score #rand cppValue matches 7..20 at @s run function cpp:plants/crops/hybrid1
