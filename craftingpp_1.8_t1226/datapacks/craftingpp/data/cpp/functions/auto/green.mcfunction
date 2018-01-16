scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:water_bucket"},{Slot:4b,id:"minecraft:water_bucket"}]}] cppCraft 24001
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:water_bucket"},{Slot:4b,id:"minecraft:ice"}]}] cppCraft 24002
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:ice"},{Slot:4b,id:"minecraft:snow_block"}]}] cppCraft 24003

scoreboard players add @s[scores={cppCraft=24001..24999}] cppTicks 4
execute as @s[scores={cppCraft=24001..24999,cppTicks=1200..}] run function cpp:auto/green_action