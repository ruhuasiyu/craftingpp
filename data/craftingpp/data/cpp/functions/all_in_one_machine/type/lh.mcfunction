execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:4b,tag:{isFruit:1b}}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:3b,tag:{isFruit:1b}}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:4b,tag:{id:"cpp:ammonia_refrigerant"}}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}},{Slot:3b,tag:{id:"cpp:ammonia_refrigerant"}}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:green_force_of_water"}},{Slot:4b,tag:{id:"cpp:ammonia_refrigerant"}}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{id:"cpp:green_force_of_water"}},{Slot:3b,tag:{id:"cpp:ammonia_refrigerant"}}]} run scoreboard players set @s cppMacType 4

scoreboard players add @s[scores={cppMacType=1,cppStoredxp=2..}] cppTick 12
scoreboard players add @s[scores={cppMacType=2..4,cppStoredxp=1..}] cppTick 60
execute if entity @s[scores={cppMacType=1,cppStoredxp=2..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
execute if entity @s[scores={cppMacType=2..4,cppStoredxp=1..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
