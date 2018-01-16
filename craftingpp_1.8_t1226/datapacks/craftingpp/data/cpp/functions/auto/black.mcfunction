scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.iron_dust"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.iron_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.iron_dust"}}}]}] cppCraft 29001
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.gold_dust"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.gold_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.gold_dust"}}}]}] cppCraft 29002
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.carbon_dust"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.carbon_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.carbon_dust"}}}]}] cppCraft 29003
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.quartz_dust"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.quartz_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.quartz_dust"}}}]}] cppCraft 29004
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.diamond_dust"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.diamond_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.diamond_dust"}}}]}] cppCraft 29005
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.emerald_dust"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.emerald_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.emerald_dust"}}}]}] cppCraft 29006
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.lapis_dust"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.lapis_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.lapis_dust"}}}]}] cppCraft 29007

scoreboard players set @s[nbt={Items:[{Slot:2b,id:"minecraft:blaze_powder"},{Slot:3b,tag:{display:{LocName:"cpp.item.iron_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.iron_dust"}}}]}] cppCraft 29008
scoreboard players set @s[nbt={Items:[{Slot:2b,id:"minecraft:blaze_powder"},{Slot:3b,tag:{display:{LocName:"cpp.item.gold_dust"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.gold_dust"}}}]}] cppCraft 29009
scoreboard players set @s[nbt={Items:[{Slot:2b,id:"minecraft:blaze_powder"},{Slot:3b,tag:{display:{LocName:"cpp.item.biology_acid"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.alkaloid"}}}]}] cppCraft 29010
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.pumande_gem"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.pumande_gem"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.pumande_gem"}}}]}] cppCraft 29012

scoreboard players add @s[scores={cppCraft=29001..29999}] cppTicks 6
execute as @s[scores={cppCraft=29001..29999,cppTicks=1200..}] run function cpp:auto/black_action
