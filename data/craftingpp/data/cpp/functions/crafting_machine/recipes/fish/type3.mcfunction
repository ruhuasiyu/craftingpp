scoreboard players set #temp3 cppValue -1
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:iron_nugget"}]} run scoreboard players set #temp3 cppValue 0
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:gold_nugget"}]} run scoreboard players set #temp3 cppValue 1
execute if score #temp3 cppValue matches 0.. run function cpp:crafting_machine/recipes/fish/done
