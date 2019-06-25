execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,tag:{id:"cpp:enchanted_iron"}}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:phantom_membrane"}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:nautilus_shell"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:golden_carrot"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:ender_pearl"}]} run scoreboard players set @s cppMacType 5
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:magma_cream"}]} run scoreboard players set @s cppMacType 6
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:pufferfish"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:rabbit_foot"}]} run scoreboard players set @s cppMacType 8
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:sugar"}]} run scoreboard players set @s cppMacType 9
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:blaze_powder"}]} run scoreboard players set @s cppMacType 10
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,tag:{id:"cpp:enchanted_diamond"}}]} run scoreboard players set @s cppMacType 11
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,tag:{id:"cpp:enchanted_gold"}}]} run scoreboard players set @s cppMacType 12
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:ghast_tear"}]} run scoreboard players set @s cppMacType 13
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:4b,id:"minecraft:glistering_melon_slice"}]} run scoreboard players set @s cppMacType 14

execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,tag:{id:"cpp:enchanted_iron"}}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:phantom_membrane"}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:nautilus_shell"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:golden_carrot"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:ender_pearl"}]} run scoreboard players set @s cppMacType 5
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:magma_cream"}]} run scoreboard players set @s cppMacType 6
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:pufferfish"}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:rabbit_foot"}]} run scoreboard players set @s cppMacType 8
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:sugar"}]} run scoreboard players set @s cppMacType 9
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:blaze_powder"}]} run scoreboard players set @s cppMacType 10
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,tag:{id:"cpp:enchanted_diamond"}}]} run scoreboard players set @s cppMacType 11
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,tag:{id:"cpp:enchanted_gold"}}]} run scoreboard players set @s cppMacType 12
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:ghast_tear"}]} run scoreboard players set @s cppMacType 13
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}},{Slot:3b,id:"minecraft:glistering_melon_slice"}]} run scoreboard players set @s cppMacType 14

scoreboard players add @s[scores={cppMacType=1..15,cppStoredxp=4..}] cppTick 6
execute if entity @s[scores={cppMacType=1..15,cppStoredxp=4..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
