# 接口
function #cpp:item_processer

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_shovel"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 101
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_shovel"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 101
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_shovel"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 101
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_shovel"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 101
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_shovel"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 101

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_hoe"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_hoe"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_hoe"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_hoe"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_hoe"},{Slot:12b,id:"minecraft:grass_block"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_hoe"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_hoe"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_hoe"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_hoe"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_hoe"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 201
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_hoe"},{Slot:12b,id:"minecraft:coarse_dirt"}]} run scoreboard players set @s cppMacType 202
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_hoe"},{Slot:12b,id:"minecraft:coarse_dirt"}]} run scoreboard players set @s cppMacType 202
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_hoe"},{Slot:12b,id:"minecraft:coarse_dirt"}]} run scoreboard players set @s cppMacType 202
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_hoe"},{Slot:12b,id:"minecraft:coarse_dirt"}]} run scoreboard players set @s cppMacType 202
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_hoe"},{Slot:12b,id:"minecraft:coarse_dirt"}]} run scoreboard players set @s cppMacType 202

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:oak_log"}]} run scoreboard players set @s cppMacType 301
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:oak_log"}]} run scoreboard players set @s cppMacType 301
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:oak_log"}]} run scoreboard players set @s cppMacType 301
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:oak_log"}]} run scoreboard players set @s cppMacType 301
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:oak_log"}]} run scoreboard players set @s cppMacType 301
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:spruce_log"}]} run scoreboard players set @s cppMacType 302
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:spruce_log"}]} run scoreboard players set @s cppMacType 302
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:spruce_log"}]} run scoreboard players set @s cppMacType 302
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:spruce_log"}]} run scoreboard players set @s cppMacType 302
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:spruce_log"}]} run scoreboard players set @s cppMacType 302
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:birch_log"}]} run scoreboard players set @s cppMacType 303
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:birch_log"}]} run scoreboard players set @s cppMacType 303
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:birch_log"}]} run scoreboard players set @s cppMacType 303
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:birch_log"}]} run scoreboard players set @s cppMacType 303
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:birch_log"}]} run scoreboard players set @s cppMacType 303
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:jungle_log"}]} run scoreboard players set @s cppMacType 304
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:jungle_log"}]} run scoreboard players set @s cppMacType 304
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:jungle_log"}]} run scoreboard players set @s cppMacType 304
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:jungle_log"}]} run scoreboard players set @s cppMacType 304
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:jungle_log"}]} run scoreboard players set @s cppMacType 304
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:acacia_log"}]} run scoreboard players set @s cppMacType 305
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:acacia_log"}]} run scoreboard players set @s cppMacType 305
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:acacia_log"}]} run scoreboard players set @s cppMacType 305
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:acacia_log"}]} run scoreboard players set @s cppMacType 305
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:acacia_log"}]} run scoreboard players set @s cppMacType 305
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:dark_oak_log"}]} run scoreboard players set @s cppMacType 306
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:dark_oak_log"}]} run scoreboard players set @s cppMacType 306
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:dark_oak_log"}]} run scoreboard players set @s cppMacType 306
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:dark_oak_log"}]} run scoreboard players set @s cppMacType 306
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:dark_oak_log"}]} run scoreboard players set @s cppMacType 306

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:oak_wood"}]} run scoreboard players set @s cppMacType 311
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:oak_wood"}]} run scoreboard players set @s cppMacType 311
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:oak_wood"}]} run scoreboard players set @s cppMacType 311
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:oak_wood"}]} run scoreboard players set @s cppMacType 311
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:oak_wood"}]} run scoreboard players set @s cppMacType 311
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:spruce_wood"}]} run scoreboard players set @s cppMacType 312
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:spruce_wood"}]} run scoreboard players set @s cppMacType 312
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:spruce_wood"}]} run scoreboard players set @s cppMacType 312
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:spruce_wood"}]} run scoreboard players set @s cppMacType 312
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:spruce_wood"}]} run scoreboard players set @s cppMacType 312
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:birch_wood"}]} run scoreboard players set @s cppMacType 313
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:birch_wood"}]} run scoreboard players set @s cppMacType 313
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:birch_wood"}]} run scoreboard players set @s cppMacType 313
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:birch_wood"}]} run scoreboard players set @s cppMacType 313
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:birch_wood"}]} run scoreboard players set @s cppMacType 313
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:jungle_wood"}]} run scoreboard players set @s cppMacType 314
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:jungle_wood"}]} run scoreboard players set @s cppMacType 314
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:jungle_wood"}]} run scoreboard players set @s cppMacType 314
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:jungle_wood"}]} run scoreboard players set @s cppMacType 314
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:jungle_wood"}]} run scoreboard players set @s cppMacType 314
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:acacia_wood"}]} run scoreboard players set @s cppMacType 315
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:acacia_wood"}]} run scoreboard players set @s cppMacType 315
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:acacia_wood"}]} run scoreboard players set @s cppMacType 315
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:acacia_wood"}]} run scoreboard players set @s cppMacType 315
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:acacia_wood"}]} run scoreboard players set @s cppMacType 315
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_axe"},{Slot:12b,id:"minecraft:dark_oak_wood"}]} run scoreboard players set @s cppMacType 316
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_axe"},{Slot:12b,id:"minecraft:dark_oak_wood"}]} run scoreboard players set @s cppMacType 316
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_axe"},{Slot:12b,id:"minecraft:dark_oak_wood"}]} run scoreboard players set @s cppMacType 316
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_axe"},{Slot:12b,id:"minecraft:dark_oak_wood"}]} run scoreboard players set @s cppMacType 316
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_axe"},{Slot:12b,id:"minecraft:dark_oak_wood"}]} run scoreboard players set @s cppMacType 316

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_pickaxe"},{Slot:12b,id:"minecraft:stone"}]} run scoreboard players set @s cppMacType 401
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_pickaxe"},{Slot:12b,id:"minecraft:stone"}]} run scoreboard players set @s cppMacType 401
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_pickaxe"},{Slot:12b,id:"minecraft:stone"}]} run scoreboard players set @s cppMacType 401
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_pickaxe"},{Slot:12b,id:"minecraft:stone"}]} run scoreboard players set @s cppMacType 401
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_pickaxe"},{Slot:12b,id:"minecraft:stone"}]} run scoreboard players set @s cppMacType 401

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:shears"},{Slot:12b,id:"minecraft:pumpkin"}]} run scoreboard players set @s cppMacType 501

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:piston"}]} if score #temp cppValue matches 4.. run function cpp:item_processer/type_piston

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:red_force_of_fire"}}]} run function cpp:item_processer/type_red_force

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:water_bucket"}]} run function cpp:item_processer/type_water
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:green_force_of_water"}},{Slot:12b,id:"minecraft:glass_bottle"}]} run scoreboard players set @s cppMacType 808
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:green_force_of_water"}},{Slot:12b,id:"minecraft:bucket"}]} run scoreboard players set @s cppMacType 899

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:grass_block"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 901
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:mycelium"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players set @s cppMacType 902

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:compressor"}},{Slot:12b,Count:64b}]} run scoreboard players set @s cppMacType 1000

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:crafting_table"},{Slot:12b,id:"minecraft:sugar_cane"}]} run scoreboard players set @s cppMacType 1101

execute as @s[scores={cppMacType=1..}] run function cpp:item_processer/done

# 接口
function #cpp:item_processer
