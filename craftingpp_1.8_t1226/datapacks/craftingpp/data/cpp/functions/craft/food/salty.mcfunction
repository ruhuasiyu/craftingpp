#30001-30005	咸食
scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:wheat"},{Slot:16b,Count:1b,id:"minecraft:wheat"},{Slot:17b,Count:1b,id:"minecraft:wheat"},{Slot:24b,Count:1b,id:"minecraft:cooked_chicken"},{Slot:26b,Count:1b,id:"minecraft:cooked_chicken"},{Slot:33b,Count:1b,id:"minecraft:wheat"},{Slot:34b,Count:1b,id:"minecraft:wheat"},{Slot:35b,Count:1b,id:"minecraft:wheat"}]}] cppCraft 30001
replaceitem entity @s[scores={cppCraft=30001}] inventory.16 minecraft:bread{display:{LocName:"cpp.item.meat_floss_bread"},ench:[{id:999s}]} 8

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:clay_ball"},{Slot:16b,Count:1b,id:"minecraft:clay_ball"},{Slot:17b,Count:1b,id:"minecraft:clay_ball"},{Slot:24b,Count:1b,id:"minecraft:wheat"},{Slot:26b,Count:1b,id:"minecraft:wheat"},{Slot:33b,Count:1b,id:"minecraft:clay_ball"},{Slot:34b,Count:1b,id:"minecraft:clay_ball"},{Slot:35b,Count:1b,id:"minecraft:clay_ball"}]}] cppCraft 30002
replaceitem entity @s[scores={cppCraft=30002}] inventory.16 minecraft:baked_potato{display:{LocName:"cpp.item.baked_bread"},ench:[{id:999s}]} 8

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:mutton"},{Slot:16b,Count:1b,id:"minecraft:mutton"},{Slot:17b,Count:1b,id:"minecraft:mutton"},{Slot:24b,Count:1b,id:"minecraft:magma_block"},{Slot:26b,Count:1b,id:"minecraft:magma_block"},{Slot:33b,Count:1b,id:"minecraft:mutton"},{Slot:34b,Count:1b,id:"minecraft:mutton"},{Slot:35b,Count:1b,id:"minecraft:mutton"}]}] cppCraft 30003
replaceitem entity @s[scores={cppCraft=30003}] inventory.16 minecraft:cooked_mutton{display:{LocName:"cpp.item.roast_whole_lamb"},ench:[{id:999s}]}

scoreboard players set @s[scores={cppCraft=30001..30003}] cppClearslot 111101111

scoreboard players set @s[nbt={Inventory:[{Slot:24b,Count:1b,id:"minecraft:baked_potato"},{Slot:26b,Count:1b,id:"minecraft:cooked_beef"}]}] cppCraft 30004
replaceitem entity @s[scores={cppCraft=30004}] inventory.16 minecraft:cooked_beef{display:{LocName:"cpp.item.braised_beef_with_potatoes"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:24b,Count:1b,id:"minecraft:egg"},{Slot:26b,id:"minecraft:bowl"}]}] cppCraft 30005
replaceitem entity @s[scores={cppCraft=30005}] inventory.16 minecraft:mushroom_stew{display:{LocName:"cpp.item.egg_soup"},ench:[{id:999s}]}

scoreboard players set @s[scores={cppCraft=30004..30005}] cppClearslot 000101010

