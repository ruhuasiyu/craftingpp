execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,tag:{id:"cpp:cobblestone_plugin"}}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lava_bucket"},{Slot:3b,tag:{id:"cpp:cobblestone_plugin"}}]} run scoreboard players set @s cppMacType 1

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,tag:{id:"cpp:stone_plugin"}}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lava_bucket"},{Slot:3b,tag:{id:"cpp:stone_plugin"}}]} run scoreboard players set @s cppMacType 2

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,tag:{id:"cpp:obsidian_plugin"}}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lava_bucket"},{Slot:3b,tag:{id:"cpp:obsidian_plugin"}}]} run scoreboard players set @s cppMacType 4

scoreboard players add @s[scores={cppMacType=1..2,cppStoredxp=1..}] cppTick 60
scoreboard players add @s[scores={cppMacType=3..4,cppStoredxp=4..}] cppTick 6
execute if entity @s[scores={cppMacType=1..2,cppStoredxp=1..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
execute if entity @s[scores={cppMacType=3..4,cppStoredxp=4..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
