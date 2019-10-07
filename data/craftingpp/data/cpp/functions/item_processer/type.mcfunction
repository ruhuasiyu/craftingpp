replaceitem block ~ ~ ~ container.15 air
replaceitem block ~ ~ ~ container.16 air
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:grass_block"}]} run function cpp:item_processer/type_grass_block
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:dirt"}]} run function cpp:item_processer/type_dirt
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:coarse_dirt"}]} run function cpp:item_processer/type_coarse_dirt
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"}]} run function cpp:item_processer/type_axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"}]} run function cpp:item_processer/type_axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"}]} run function cpp:item_processer/type_axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"}]} run function cpp:item_processer/type_axe
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"}]} run function cpp:item_processer/type_axe
execute if block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:stone"}]} run function cpp:item_processer/type_stone
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:shears"},{Slot:12b,id:"minecraft:pumpkin"}]} run replaceitem block ~ ~ ~ container.15 minecraft:carved_pumpkin
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:shears"},{Slot:12b,id:"minecraft:pumpkin"}]} run replaceitem block ~ ~ ~ container.16 minecraft:pumpkin_seeds 4

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:piston"}]} if score #temp cppValue matches 4.. run function cpp:item_processer/type_piston4
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:red_force_of_fire"}}]} run function cpp:item_processer/type_red_force

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:water_bucket"}]} run function cpp:item_processer/type_water
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:green_force_of_water"}},{Slot:12b,id:"minecraft:glass_bottle"}]} run scoreboard players set @s cppMacType 808
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:green_force_of_water"}},{Slot:12b,id:"minecraft:bucket"}]} run scoreboard players set @s cppMacType 899

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:grass_block"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 901
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:mycelium"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 902

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:compressor"}},{Slot:12b,Count:64b}]} run scoreboard players set @s cppMacType 1000

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:crafting_table"},{Slot:12b,id:"minecraft:sugar_cane"}]} run scoreboard players set @s cppMacType 1101

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_sword"}]} run function cpp:item_processer/type_sword
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_sword"}]} run function cpp:item_processer/type_sword
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_sword"}]} run function cpp:item_processer/type_sword
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_sword"}]} run function cpp:item_processer/type_sword
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_sword"}]} run function cpp:item_processer/type_sword

execute as @s[scores={cppMacType=1..}] run function cpp:item_processer/done
