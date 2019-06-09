execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,tag:{id:"cpp:cobblestone_plugin"}}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lava_bucket"},{Slot:3b,tag:{id:"cpp:cobblestone_plugin"}}]} run scoreboard players set @s cppMacType 1

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,tag:{id:"cpp:stone_plugin"}}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lava_bucket"},{Slot:3b,tag:{id:"cpp:stone_plugin"}}]} run scoreboard players set @s cppMacType 2

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,tag:{id:"cpp:netherrack_plugin"}}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lava_bucket"},{Slot:3b,tag:{id:"cpp:netherrack_plugin"}}]} run scoreboard players set @s cppMacType 3

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,tag:{id:"cpp:end_stone_plugin"}}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lava_bucket"},{Slot:3b,tag:{id:"cpp:end_stone_plugin"}}]} run scoreboard players set @s cppMacType 4

execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,tag:{id:"cpp:obsidian_plugin"}}]} run scoreboard players set @s cppMacType 13
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:lava_bucket"},{Slot:3b,tag:{id:"cpp:obsidian_plugin"}}]} run scoreboard players set @s cppMacType 14

scoreboard players add @s[scores={cppMacType=1..4,cppStoredxp=1..}] cppTick 60
scoreboard players add @s[scores={cppMacType=13..14,cppStoredxp=4..}] cppTick 6
execute if entity @s[scores={cppMacType=1..4,cppStoredxp=1..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
execute if entity @s[scores={cppMacType=13..14,cppStoredxp=4..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
