execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_shovel"}]} run replaceitem block ~ ~ ~ container.15 grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_shovel"}]} run replaceitem block ~ ~ ~ container.15 grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_shovel"}]} run replaceitem block ~ ~ ~ container.15 grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_shovel"}]} run replaceitem block ~ ~ ~ container.15 grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_shovel"}]} run replaceitem block ~ ~ ~ container.15 grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute unless data block ~ ~ ~ Items[{Slot:15b,cppMachineBg:1b}] run function cpp:item_processer/damage/shovel_hoe