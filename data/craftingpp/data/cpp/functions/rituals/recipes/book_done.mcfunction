# 8-56
execute if block ~ ~ ~ dispenser{Items:[{Slot:7b,tag:{id:'cpp:wing_of_sky'}}]} run scoreboard players operation #result cppValue = #ritual_mat1 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:7b,tag:{id:'cpp:heart_of_crystal'}}]} run scoreboard players operation #result cppValue = #ritual_mat2 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:7b,tag:{id:'cpp:limb_of_ridge'}}]} run scoreboard players operation #result cppValue = #ritual_mat3 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:7b,tag:{id:'cpp:soul_of_dirt'}}]} run scoreboard players operation #result cppValue = #ritual_mat4 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:7b,tag:{id:'cpp:certification_of_earth'}}]} run scoreboard players operation #result cppValue = #ritual_mat5 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:7b,tag:{id:'cpp:nova_of_fire'}}]} run scoreboard players operation #result cppValue = #ritual_mat6 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:7b,tag:{id:'cpp:spirit_of_life'}}]} run scoreboard players operation #result cppValue = #ritual_mat7 cppValue
scoreboard players set #7 cppValue 7
scoreboard players operation #result cppValue *= #7 cppValue

execute if block ~ ~ ~ dispenser{Items:[{Slot:1b,tag:{id:'cpp:wing_of_sky'}}]} run scoreboard players operation #result cppValue += #ritual_mat1 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:1b,tag:{id:'cpp:heart_of_crystal'}}]} run scoreboard players operation #result cppValue += #ritual_mat2 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:1b,tag:{id:'cpp:limb_of_ridge'}}]} run scoreboard players operation #result cppValue += #ritual_mat3 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:1b,tag:{id:'cpp:soul_of_dirt'}}]} run scoreboard players operation #result cppValue += #ritual_mat4 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:1b,tag:{id:'cpp:certification_of_earth'}}]} run scoreboard players operation #result cppValue += #ritual_mat5 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:1b,tag:{id:'cpp:nova_of_fire'}}]} run scoreboard players operation #result cppValue += #ritual_mat6 cppValue
execute if block ~ ~ ~ dispenser{Items:[{Slot:1b,tag:{id:'cpp:spirit_of_life'}}]} run scoreboard players operation #result cppValue += #ritual_mat7 cppValue
scoreboard players set #36 cppValue 36
scoreboard players operation #result cppValue %= #36 cppValue

tellraw @p {"translate":"info.cpp.rituals.finish"}
data remove block ~ ~ ~ Items
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
tag @s remove cpp_rituals_item

data merge entity @s {Item:{id:"minecraft:enchanted_book",Count:1b}}
execute if score #result cppValue matches 0 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[0]
execute if score #result cppValue matches 1 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[1]
execute if score #result cppValue matches 2 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[2]
execute if score #result cppValue matches 3 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[3]
execute if score #result cppValue matches 4 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[4]
execute if score #result cppValue matches 5 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[5]
execute if score #result cppValue matches 6 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[6]
execute if score #result cppValue matches 7 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[7]
execute if score #result cppValue matches 8 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[8]
execute if score #result cppValue matches 9 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[9]
execute if score #result cppValue matches 10 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[10]
execute if score #result cppValue matches 11 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[11]
execute if score #result cppValue matches 12 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[12]
execute if score #result cppValue matches 13 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[13]
execute if score #result cppValue matches 14 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[14]
execute if score #result cppValue matches 15 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[15]
execute if score #result cppValue matches 16 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[16]
execute if score #result cppValue matches 17 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[17]
execute if score #result cppValue matches 18 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[18]
execute if score #result cppValue matches 19 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[19]
execute if score #result cppValue matches 20 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[20]
execute if score #result cppValue matches 21 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[21]
execute if score #result cppValue matches 22 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[22]
execute if score #result cppValue matches 23 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[23]
execute if score #result cppValue matches 24 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[24]
execute if score #result cppValue matches 25 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[25]
execute if score #result cppValue matches 26 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[26]
execute if score #result cppValue matches 27 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[27]
execute if score #result cppValue matches 28 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[28]
execute if score #result cppValue matches 29 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[29]
execute if score #result cppValue matches 30 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[30]
execute if score #result cppValue matches 31 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[31]
execute if score #result cppValue matches 32 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[32]
execute if score #result cppValue matches 33 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[33]
execute if score #result cppValue matches 34 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[34]
execute if score #result cppValue matches 35 run data modify entity @s Item.tag.StoredEnchantments append from storage cpp:ench_ritual EnchList[35]
