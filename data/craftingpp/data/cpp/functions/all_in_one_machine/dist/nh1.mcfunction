scoreboard players remove @s cppStoredxp 1

execute as @s[scores={cppMacType=101}] run loot replace block ~ ~ ~ container.21 1 loot cpp:iron_dust
execute as @s[scores={cppMacType=102}] run loot replace block ~ ~ ~ container.21 1 loot cpp:gold_dust
execute as @s[scores={cppMacType=103}] run loot replace block ~ ~ ~ container.21 1 loot cpp:carbon_dust
execute as @s[scores={cppMacType=104}] run loot replace block ~ ~ ~ container.21 1 loot cpp:diamond_dust
execute as @s[scores={cppMacType=105}] run loot replace block ~ ~ ~ container.21 1 loot cpp:emerald_dust
execute as @s[scores={cppMacType=106}] run loot replace block ~ ~ ~ container.21 1 loot cpp:quartz_dust

execute as @s[scores={cppMacType=201}] run replaceitem block ~ ~ ~ container.21 minecraft:sand 4
execute as @s[scores={cppMacType=202}] run replaceitem block ~ ~ ~ container.21 minecraft:gravel 4
execute as @s[scores={cppMacType=203}] run replaceitem block ~ ~ ~ container.21 minecraft:flint 4
execute as @s[scores={cppMacType=211}] run replaceitem block ~ ~ ~ container.21 minecraft:sand 4
execute as @s[scores={cppMacType=212}] run replaceitem block ~ ~ ~ container.21 minecraft:gravel 4
execute as @s[scores={cppMacType=213}] run replaceitem block ~ ~ ~ container.21 minecraft:flint 4


execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:prismarine"}]} run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/prismarine
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:prismarine_bricks"}]} run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/prismarine_bricks
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:dark_prismarine"}]} run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/prismarine_bricks
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:clay"}]} run scoreboard 
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:white_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:orange_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:magenta_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:light_blue_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:yellow_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:lime_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:pink_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:gray_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:light_gray_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:cyan_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:purple_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:blue_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:brown_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:green_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:red_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:black_wool"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:iron_ingot"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:gold_ingot"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:coal"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:charcoal"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:diamond"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:emerald"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:quartz"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:granite"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:diorite"}]} run scoreboard players add @s cppTick 24
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:andesite"}]} run scoreboard players add @s cppTick 24

execute store result score #temp cppValue run data get block ~ ~ ~ Items[4].Count

execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:cobblestone"}]} run scoreboard players add @s cppTick 60201
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:stone"}]} run scoreboard players add @s cppTick 60202
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:gravel"}]} run scoreboard players add @s cppTick 60203
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:grass_block"}]} run scoreboard players add @s cppTick 60204
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:grass_path"}]} run scoreboard players add @s cppTick 60204
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:mycelium"}]} run scoreboard players add @s cppTick 60204
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:farmland"}]} run scoreboard players add @s cppTick 60204
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:podzol"}]} run scoreboard players add @s cppTick 60204
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:grass_block"}]} run scoreboard players add @s cppTick 60204
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:gravel"}]} run scoreboard players add @s cppTick 60205
execute if score #temp cppValue matches 8.. if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:flint"},{id:"minecraft:gravel"}]} run scoreboard players add @s cppTick 60

execute as @s[scores={cppStoredxp=4..}] run function cpp:all_in_one_machine/type/nh4

execute if score @s cppTick >= #allInOneMachinePeriod cppValue run function cpp:all_in_one_machine/done


execute as @s[scores={cppMacType=1}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/iron_ore
execute as @s[scores={cppMacType=2}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/gold_ore
execute as @s[scores={cppMacType=3}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/coal_ore
execute as @s[scores={cppMacType=4}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/diamond_ore
execute as @s[scores={cppMacType=5}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/emerald_ore
execute as @s[scores={cppMacType=6}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/quartz_ore
execute as @s[scores={cppMacType=7}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/redstone_ore
execute as @s[scores={cppMacType=8}] run loot replace block ~ ~ ~ container.21 2 loot cpp:items/nh/lapis_ore

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute as @s[scores={cppMacType=201..203}] run scoreboard players remove #temp cppValue 3
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute as @s[scores={cppMacType=211..213}] run scoreboard players remove #temp cppValue 3
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
