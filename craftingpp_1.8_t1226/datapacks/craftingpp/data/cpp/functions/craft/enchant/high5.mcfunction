scoreboard players set @s[nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",Count:1b},{Slot:16b,id:"minecraft:nether_star",Count:1b},{Slot:17b,id:"minecraft:nether_star",Count:1b},{Slot:24b,id:"minecraft:nether_star",Count:1b},{Slot:26b,id:"minecraft:nether_star",Count:1b},{Slot:33b,id:"minecraft:nether_star",Count:1b},{Slot:34b,id:"minecraft:nether_star",Count:1b},{Slot:35b,id:"minecraft:nether_star",Count:1b},{Slot:25b,tag:{StoredEnchantments:[{id:21s,lvl:4s}]}}]}] cppCraft 42001
replaceitem entity @s[scores={cppCraft=42001}] inventory.16 minecraft:enchanted_book{StoredEnchantments:[{id:21s,lvl:5s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",Count:1b},{Slot:16b,id:"minecraft:nether_star",Count:1b},{Slot:17b,id:"minecraft:nether_star",Count:1b},{Slot:24b,id:"minecraft:nether_star",Count:1b},{Slot:26b,id:"minecraft:nether_star",Count:1b},{Slot:33b,id:"minecraft:nether_star",Count:1b},{Slot:34b,id:"minecraft:nether_star",Count:1b},{Slot:35b,id:"minecraft:nether_star",Count:1b},{Slot:25b,tag:{StoredEnchantments:[{id:35s,lvl:4s}]}}]}] cppCraft 42002
replaceitem entity @s[scores={cppCraft=42002}] inventory.16 minecraft:enchanted_book{StoredEnchantments:[{id:35s,lvl:5s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",Count:1b},{Slot:16b,id:"minecraft:nether_star",Count:1b},{Slot:17b,id:"minecraft:nether_star",Count:1b},{Slot:24b,id:"minecraft:nether_star",Count:1b},{Slot:26b,id:"minecraft:nether_star",Count:1b},{Slot:33b,id:"minecraft:nether_star",Count:1b},{Slot:34b,id:"minecraft:nether_star",Count:1b},{Slot:35b,id:"minecraft:nether_star",Count:1b},{Slot:25b,tag:{StoredEnchantments:[{id:16s,lvl:6s}]}}]}] cppCraft 42003
replaceitem entity @s[scores={cppCraft=42003}] inventory.16 minecraft:enchanted_book{StoredEnchantments:[{id:16s,lvl:7s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",Count:1b},{Slot:16b,id:"minecraft:nether_star",Count:1b},{Slot:17b,id:"minecraft:nether_star",Count:1b},{Slot:24b,id:"minecraft:nether_star",Count:1b},{Slot:26b,id:"minecraft:nether_star",Count:1b},{Slot:33b,id:"minecraft:nether_star",Count:1b},{Slot:34b,id:"minecraft:nether_star",Count:1b},{Slot:35b,id:"minecraft:nether_star",Count:1b},{Slot:25b,tag:{StoredEnchantments:[{id:48s,lvl:6s}]}}]}] cppCraft 42004
replaceitem entity @s[scores={cppCraft=42004}] inventory.16 minecraft:enchanted_book{StoredEnchantments:[{id:48s,lvl:7s}]}

scoreboard players set @a[scores={cppCraft=42001..42004}] cppClearslot 111101111
xp add @a[scores={cppCraft=42001..42004}] -50 levels
