execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_hoe"}]} run replaceitem block ~ ~ ~ container.15 farmland
execute unless data block ~ ~ ~ Items[{Slot:15b,cppMachineBg:1b}] run function cpp:item_processer/damage/hoe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:grass_block"}]} run replaceitem block ~ ~ ~ container.15 grass_block
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:mycelium"}]} run replaceitem block ~ ~ ~ container.15 mycelium
