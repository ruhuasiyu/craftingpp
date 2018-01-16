scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:iron_ore"},{Slot:4b,id:"minecraft:iron_ore"}]}] cppCraft 21001
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:gold_ore"},{Slot:4b,id:"minecraft:gold_ore"}]}] cppCraft 21002
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:coal_ore"},{Slot:4b,id:"minecraft:coal_ore"}]}] cppCraft 21003
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:nether_quartz_ore"},{Slot:4b,id:"minecraft:nether_quartz_ore"}]}] cppCraft 21004
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:diamond_ore"},{Slot:4b,id:"minecraft:diamond_ore"}]}] cppCraft 21005
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:emerald_ore"},{Slot:4b,id:"minecraft:emerald_ore"}]}] cppCraft 21006
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:lapis_ore"},{Slot:4b,id:"minecraft:lapis_ore"}]}] cppCraft 21007
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:redstone_ore"},{Slot:4b,id:"minecraft:redstone_ore"}]}] cppCraft 21008
scoreboard players set @s[nbt={Items:[{Slot:3b,id:"minecraft:water_bucket"},{Slot:4b,id:"minecraft:sunflower"}]}] cppCraft 21009
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.diamond_dust"}}},{Slot:3b,tag:{display:{LocName:"cpp.item.enchanted_iron"}}},{Slot:4b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}}]}] cppCraft 21010

scoreboard players add @s[scores={cppCraft=21001..21999}] cppTicks 6
execute as @s[scores={cppCraft=21001..21999,cppTicks=1200..}] run function cpp:auto/red_action