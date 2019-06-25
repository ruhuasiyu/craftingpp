scoreboard players remove @s cppStoredxp 4

execute if score #smelt_iron cppValue matches 1.. run loot insert ~ ~ ~ loot cpp:items/iron_ingot
execute if score #smelt_iron cppValue matches 2.. run loot insert ~ ~ ~ loot cpp:items/iron_ingot
execute if score #smelt_iron cppValue matches 3.. run loot insert ~ ~ ~ loot cpp:items/iron_ingot
execute if score #smelt_iron cppValue matches 4.. run loot insert ~ ~ ~ loot cpp:items/iron_ingot

execute if score #smelt_gold cppValue matches 1.. run loot insert ~ ~ ~ loot cpp:items/gold_ingot
execute if score #smelt_gold cppValue matches 2.. run loot insert ~ ~ ~ loot cpp:items/gold_ingot
execute if score #smelt_gold cppValue matches 3.. run loot insert ~ ~ ~ loot cpp:items/gold_ingot
execute if score #smelt_gold cppValue matches 4.. run loot insert ~ ~ ~ loot cpp:items/gold_ingot

execute if score #smelt_coal cppValue matches 1.. run loot insert ~ ~ ~ loot blocks/coal_ore
execute if score #smelt_coal cppValue matches 2.. run loot insert ~ ~ ~ loot blocks/coal_ore
execute if score #smelt_coal cppValue matches 3.. run loot insert ~ ~ ~ loot blocks/coal_ore
execute if score #smelt_coal cppValue matches 4.. run loot insert ~ ~ ~ loot blocks/coal_ore

execute if score #smelt_quartz cppValue matches 1.. run loot insert ~ ~ ~ loot blocks/nether_quartz_ore
execute if score #smelt_quartz cppValue matches 2.. run loot insert ~ ~ ~ loot blocks/nether_quartz_ore
execute if score #smelt_quartz cppValue matches 3.. run loot insert ~ ~ ~ loot blocks/nether_quartz_ore
execute if score #smelt_quartz cppValue matches 4.. run loot insert ~ ~ ~ loot blocks/nether_quartz_ore

execute if score #smelt_diamond cppValue matches 1.. run loot insert ~ ~ ~ loot blocks/diamond_ore
execute if score #smelt_diamond cppValue matches 2.. run loot insert ~ ~ ~ loot blocks/diamond_ore
execute if score #smelt_diamond cppValue matches 3.. run loot insert ~ ~ ~ loot blocks/diamond_ore
execute if score #smelt_diamond cppValue matches 4.. run loot insert ~ ~ ~ loot blocks/diamond_ore

execute if score #smelt_emerald cppValue matches 1.. run loot insert ~ ~ ~ loot blocks/emerald_ore
execute if score #smelt_emerald cppValue matches 2.. run loot insert ~ ~ ~ loot blocks/emerald_ore
execute if score #smelt_emerald cppValue matches 3.. run loot insert ~ ~ ~ loot blocks/emerald_ore
execute if score #smelt_emerald cppValue matches 4.. run loot insert ~ ~ ~ loot blocks/emerald_ore

execute if score #smelt_redstone cppValue matches 1.. run loot insert ~ ~ ~ loot blocks/redstone_ore
execute if score #smelt_redstone cppValue matches 2.. run loot insert ~ ~ ~ loot blocks/redstone_ore
execute if score #smelt_redstone cppValue matches 3.. run loot insert ~ ~ ~ loot blocks/redstone_ore
execute if score #smelt_redstone cppValue matches 4.. run loot insert ~ ~ ~ loot blocks/redstone_ore

execute if score #smelt_lapis cppValue matches 1.. run loot insert ~ ~ ~ loot blocks/lapis_ore
execute if score #smelt_lapis cppValue matches 2.. run loot insert ~ ~ ~ loot blocks/lapis_ore
execute if score #smelt_lapis cppValue matches 3.. run loot insert ~ ~ ~ loot blocks/lapis_ore
execute if score #smelt_lapis cppValue matches 4.. run loot insert ~ ~ ~ loot blocks/lapis_ore

execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[4].Count
execute at @s store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players remove #temp cppValue 1
execute at @s store result score #temp cppValue run data get block ~ ~ ~ Items[3].Count
execute at @s store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players remove #temp cppValue 1

advancement grant @a[distance=..6] only cpp:arguments
