execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count

execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:grass_block"}]} run function cpp:item_processer/recipes/grass_block
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:dirt"}]} run function cpp:item_processer/recipes/dirt
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:coarse_dirt"}]} run function cpp:item_processer/recipes/coarse_dirt
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"}]} run function cpp:item_processer/recipes/axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"}]} run function cpp:item_processer/recipes/axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"}]} run function cpp:item_processer/recipes/axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"}]} run function cpp:item_processer/recipes/axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"}]} run function cpp:item_processer/recipes/axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:shears"},{Slot:12b,id:"minecraft:pumpkin"}]} run function cpp:item_processer/recipes/shears_pumpkin

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:piston"}]} if score #temp cppValue matches 4.. run function cpp:item_processer/recipes/piston4
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:red_force_of_fire"}}]} run function cpp:item_processer/recipes/red_force

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:water_bucket"}]} run function cpp:item_processer/recipes/water
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:green_force_of_water"}},{Slot:12b,id:"minecraft:glass_bottle"}]} run replaceitem block ~ ~ ~ container.15 potion{Potion:"minecraft:water"}
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:green_force_of_water"}},{Slot:12b,id:"minecraft:bucket"}]} run replaceitem block ~ ~ ~ container.15 water_bucket

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:compressor"}},{Slot:12b,Count:64b}]} run function cpp:item_processer/recipes/compressor

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:crafting_table"}]} run function cpp:item_processer/recipes/crafting_table

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_sword"}]} run function cpp:item_processer/recipes/sword
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_sword"}]} run function cpp:item_processer/recipes/sword
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_sword"}]} run function cpp:item_processer/recipes/sword
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_sword"}]} run function cpp:item_processer/recipes/sword
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_sword"}]} run function cpp:item_processer/recipes/sword
# 接口
function #cpp:item_processer
execute unless data block ~ ~ ~ Items[{Slot:15b,cppMachineBg:1b}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 1
