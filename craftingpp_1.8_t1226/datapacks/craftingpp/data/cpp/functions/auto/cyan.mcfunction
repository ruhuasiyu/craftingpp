scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,id:"minecraft:water_bucket"}]}] cppCraft 23001
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:water_bucket"},{Slot:4b,id:"minecraft:lava_bucket"}]}] cppCraft 23002
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:lava_bucket"},{Slot:4b,id:"minecraft:lava_bucket"}]}] cppCraft 23003

scoreboard players add @s[scores={cppCraft=23001..23999}] cppTicks 6
execute as @s[scores={cppCraft=23001..23999,cppTicks=1200..}] run function cpp:auto/cyan_action
