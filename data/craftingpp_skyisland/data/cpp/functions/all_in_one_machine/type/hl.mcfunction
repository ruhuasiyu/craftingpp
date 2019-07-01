execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:acid"}},{Slot:4b,id:"minecraft:nether_wart"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:soda_water"}},{Slot:4b,id:"minecraft:nether_wart"}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:quartz_dust"}},{Slot:4b,id:"minecraft:flint"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{dict:"quartz_dust"}},{Slot:4b,id:"minecraft:flint"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:glass_bottle"},{Slot:4b,id:"minecraft:piston"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:coarse_silicon"}},{Slot:4b,tag:{id:"cpp:bottle_of_air"}}]} run scoreboard players set @s cppMacType 5
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:clay_ball"},{Slot:4b,tag:{id:"cpp:bottle_of_salt"}}]} run scoreboard players set @s cppMacType 6
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:clay_ball"},{Slot:4b,tag:{dict:"salt"}}]} run scoreboard players set @s cppMacType 6
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:rare_earth_salt"}},{Slot:4b,tag:{id:"cpp:alkaloid"}}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:alkaloid_rare_earth"}},{Slot:4b,tag:{id:"cpp:bionic_acid"}}]} run scoreboard players set @s cppMacType 8
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:alkaloid"}},{Slot:4b,tag:{id:"cpp:fertilizer"}}]} run scoreboard players set @s cppMacType 9

execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{id:"cpp:acid"}},{Slot:3b,id:"minecraft:nether_wart"}]} run scoreboard players set @s cppMacType 1
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{id:"cpp:soda_water"}},{Slot:3b,id:"minecraft:nether_wart"}]} run scoreboard players set @s cppMacType 2
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{id:"cpp:quartz_dust"}},{Slot:3b,id:"minecraft:flint"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{dict:"quartz_dust"}},{Slot:3b,id:"minecraft:flint"}]} run scoreboard players set @s cppMacType 3
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:glass_bottle"},{Slot:3b,id:"minecraft:piston"}]} run scoreboard players set @s cppMacType 4
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{id:"cpp:coarse_silicon"}},{Slot:3b,tag:{id:"cpp:bottle_of_air"}}]} run scoreboard players set @s cppMacType 5
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:clay_ball"},{Slot:3b,tag:{id:"cpp:bottle_of_salt"}}]} run scoreboard players set @s cppMacType 6
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,id:"minecraft:clay_ball"},{Slot:3b,tag:{dict:"salt"}}]} run scoreboard players set @s cppMacType 6
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{id:"cpp:rare_earth_salt"}},{Slot:3b,tag:{id:"cpp:alkaloid"}}]} run scoreboard players set @s cppMacType 7
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{id:"cpp:alkaloid_rare_earth"}},{Slot:3b,tag:{id:"cpp:bionic_acid"}}]} run scoreboard players set @s cppMacType 8
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{id:"cpp:alkaloid"}},{Slot:3b,tag:{id:"cpp:fertilizer"}}]} run scoreboard players set @s cppMacType 9

scoreboard players add @s[scores={cppMacType=1..9,cppStoredxp=4..}] cppTick 6
execute as @s[scores={cppMacType=1..9,cppStoredxp=4..}] if score @s cppTick >= #all_in_one_machine_cd cppValue run function cpp:all_in_one_machine/done
