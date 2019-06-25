scoreboard players set @s cppMacType 0

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_ore"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:gold_ore"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:coal_ore"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:nether_quartz_ore"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_ore"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:emerald_ore"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lapis_ore"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:redstone_ore"}]} run scoreboard players set @s cppMacType 1

execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:iron_ore"}]} run scoreboard players add @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:gold_ore"}]} run scoreboard players add @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:coal_ore"}]} run scoreboard players add @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:nether_quartz_ore"}]} run scoreboard players add @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:diamond_ore"}]} run scoreboard players add @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:emerald_ore"}]} run scoreboard players add @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lapis_ore"}]} run scoreboard players add @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:redstone_ore"}]} run scoreboard players add @s cppMacType 1

execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:iron_ore"},{Slot:3b,id:"minecraft:iron_ore"}]} run scoreboard players remove @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:gold_ore"},{Slot:3b,id:"minecraft:gold_ore"}]} run scoreboard players remove @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:coal_ore"},{Slot:3b,id:"minecraft:coal_ore"}]} run scoreboard players remove @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:nether_quartz_ore"},{Slot:3b,id:"minecraft:nether_quartz_ore"}]} run scoreboard players remove @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:diamond_ore"},{Slot:3b,id:"minecraft:diamond_ore"}]} run scoreboard players remove @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:emerald_ore"},{Slot:3b,id:"minecraft:emerald_ore"}]} run scoreboard players remove @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lapis_ore"},{Slot:3b,id:"minecraft:lapis_ore"}]} run scoreboard players remove @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:redstone_ore"},{Slot:3b,id:"minecraft:redstone_ore"}]} run scoreboard players remove @s cppMacType 1

scoreboard players add @s[scores={cppMacType=2,cppStoredxp=4..}] cppTick 6
execute as @s[scores={cppMacType=2,cppStoredxp=4..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/dist/hh_calc
execute as @s[scores={cppMacType=2,cppStoredxp=4..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
