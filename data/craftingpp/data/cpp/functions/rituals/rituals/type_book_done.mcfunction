execute if block ~ ~-1 ~ dispenser{Items:[{Slot:4b,tag:{id:"cpp:wing_of_sky"},Count:1b}]} run scoreboard players set #random_min cppValue 0
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:4b,tag:{id:"cpp:heart_of_crystal"},Count:1b}]} run scoreboard players set #random_min cppValue 4
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:4b,tag:{id:"cpp:limb_of_ridge"},Count:1b}]} run scoreboard players set #random_min cppValue 8
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:4b,tag:{id:"cpp:soul_of_dirt"},Count:1b}]} run scoreboard players set #random_min cppValue 12
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:4b,tag:{id:"cpp:certification_of_earth"},Count:1b}]} run scoreboard players set #random_min cppValue 16
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:4b,tag:{id:"cpp:nova_of_fire"},Count:1b}]} run scoreboard players set #random_min cppValue 20
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:4b,tag:{id:"cpp:spirit_of_life"},Count:1b}]} run scoreboard players set #random_min cppValue 24
execute if block ~ ~-1 ~ dispenser{Items:[{Slot:4b,id:"minecraft:nether_star",Count:1b}]} run scoreboard players set #random_min cppValue 28

tellraw @p {"translate":"info.cpp.rituals.finish"}
data remove block ~ ~-1 ~ Items
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
tag @s remove cpp_rituals_item

scoreboard players set #random_max cppValue 3
scoreboard players operation #random_max cppValue += #random_min cppValue
function cpp:random

data merge entity @s {Item:{id:"minecraft:enchanted_book",Count:1b}}
execute if score #rand cppValue matches 0 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:0}]
execute if score #rand cppValue matches 1 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:1}]
execute if score #rand cppValue matches 2 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:2}]
execute if score #rand cppValue matches 3 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:3}]
execute if score #rand cppValue matches 4 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:4}]
execute if score #rand cppValue matches 5 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:5}]
execute if score #rand cppValue matches 6 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:6}]
execute if score #rand cppValue matches 7 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:7}]
execute if score #rand cppValue matches 8 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:8}]
execute if score #rand cppValue matches 9 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:9}]
execute if score #rand cppValue matches 10 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:10}]
execute if score #rand cppValue matches 11 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:11}]
execute if score #rand cppValue matches 12 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:12}]
execute if score #rand cppValue matches 13 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:13}]
execute if score #rand cppValue matches 14 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:14}]
execute if score #rand cppValue matches 15 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:15}]
execute if score #rand cppValue matches 16 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:16}]
execute if score #rand cppValue matches 17 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:17}]
execute if score #rand cppValue matches 18 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:18}]
execute if score #rand cppValue matches 19 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:19}]
execute if score #rand cppValue matches 20 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:20}]
execute if score #rand cppValue matches 21 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:21}]
execute if score #rand cppValue matches 22 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:22}]
execute if score #rand cppValue matches 23 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:23}]
execute if score #rand cppValue matches 24 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:24}]
execute if score #rand cppValue matches 25 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:25}]
execute if score #rand cppValue matches 26 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:26}]
execute if score #rand cppValue matches 27 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:27}]
execute if score #rand cppValue matches 28 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:28}]
execute if score #rand cppValue matches 29 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:29}]
execute if score #rand cppValue matches 30 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:30}]
execute if score #rand cppValue matches 31 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[{index:31}]
data remove entity @s Item.tag.StoredEnchantments[0].index
