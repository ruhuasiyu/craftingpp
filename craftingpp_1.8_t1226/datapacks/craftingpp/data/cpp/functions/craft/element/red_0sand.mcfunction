#11101	转化器核心
scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:blaze_powder"},{Slot:17b,Count:1b,id:"minecraft:blaze_powder"},{Slot:33b,Count:1b,id:"minecraft:blaze_powder"},{Slot:35b,Count:1b,id:"minecraft:blaze_powder"},{Slot:16b,Count:1b,id:"minecraft:diamond"},{Slot:24b,Count:1b,id:"minecraft:experience_bottle"},{Slot:26b,Count:1b,id:"minecraft:experience_bottle"},{Slot:34b,Count:1b,id:"minecraft:magma_block"}]}] cppCraft 11101
replaceitem entity @s[scores={cppCraft=11101}] inventory.17 minecraft:magma_block{display:{LocName:"cpp.item.converter_core"},ench:[{id:999s}]}

scoreboard players set @s[scores={cppCraft=11101}] cppClearslot 111100111
