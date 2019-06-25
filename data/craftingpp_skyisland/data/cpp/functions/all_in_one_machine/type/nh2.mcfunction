execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ore"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:gold_ore"}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:coal_ore"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_ore"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:emerald_ore"}]} run scoreboard players set @s cppMacType 5
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:nether_quartz_ore"}]} run scoreboard players set @s cppMacType 6
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:redstone_ore"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lapis_ore"}]} run scoreboard players set @s cppMacType 8

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:prismarine"}]} run scoreboard players set @s cppMacType 24
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:prismarine_bricks"}]} run scoreboard players set @s cppMacType 25
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:dark_prismarine"}]} run scoreboard players set @s cppMacType 25
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:clay"}]} run scoreboard players set @s cppMacType 26
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:white_wool"}]} run scoreboard players set @s cppMacType 27
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:orange_wool"}]} run scoreboard players set @s cppMacType 28
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:magenta_wool"}]} run scoreboard players set @s cppMacType 29
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:light_blue_wool"}]} run scoreboard players set @s cppMacType 30
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:yellow_wool"}]} run scoreboard players set @s cppMacType 31
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lime_wool"}]} run scoreboard players set @s cppMacType 32
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:pink_wool"}]} run scoreboard players set @s cppMacType 33
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:gray_wool"}]} run scoreboard players set @s cppMacType 34
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:light_gray_wool"}]} run scoreboard players set @s cppMacType 35
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:cyan_wool"}]} run scoreboard players set @s cppMacType 36
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:purple_wool"}]} run scoreboard players set @s cppMacType 37
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:blue_wool"}]} run scoreboard players set @s cppMacType 38
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:brown_wool"}]} run scoreboard players set @s cppMacType 39
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:green_wool"}]} run scoreboard players set @s cppMacType 40
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:red_wool"}]} run scoreboard players set @s cppMacType 41
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:black_wool"}]} run scoreboard players set @s cppMacType 42

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ingot"}]} run scoreboard players set @s cppMacType 101
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:gold_ingot"}]} run scoreboard players set @s cppMacType 102
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:coal"}]} run scoreboard players set @s cppMacType 103
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:charcoal"}]} run scoreboard players set @s cppMacType 103
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond"}]} run scoreboard players set @s cppMacType 104
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:emerald"}]} run scoreboard players set @s cppMacType 105
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:quartz"}]} run scoreboard players set @s cppMacType 106
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:granite"}]} run scoreboard players set @s cppMacType 106
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diorite"}]} run scoreboard players set @s cppMacType 106
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:andesite"}]} run scoreboard players set @s cppMacType 106

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:cobblestone"}]} run scoreboard players set @s cppMacType 211
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone"}]} run scoreboard players set @s cppMacType 212
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:gravel"}]} run scoreboard players set @s cppMacType 213

execute store result score #temp cppValue run data get block ~ ~ ~ Items[3].Count

scoreboard players add @s[scores={cppMacType=1..8,cppStoredxp=4..}] cppTick 6
scoreboard players add @s[scores={cppMacType=24..106,cppStoredxp=1..}] cppTick 24
execute if score #temp cppValue matches 4.. run scoreboard players add @s[scores={cppMacType=211..213,cppStoredxp=1..}] cppTick 60

execute as @s[scores={cppMacType=1..213}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
