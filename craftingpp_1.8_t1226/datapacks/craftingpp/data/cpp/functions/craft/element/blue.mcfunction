#15001-15007	蓝色天之力
scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:leather"},{Slot:16b,Count:1b,id:"minecraft:leather"},{Slot:17b,Count:1b,id:"minecraft:leather"},{Slot:33b,Count:1b,id:"minecraft:iron_ingot"},{Slot:35b,Count:1b,id:"minecraft:iron_ingot"}]}] cppCraft 15001
replaceitem entity @s[scores={cppCraft=15001}] inventory.25 minecraft:saddle

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:iron_ingot"},{Slot:16b,id:"minecraft:iron_chestplate"},{Slot:17b,Count:1b,id:"minecraft:iron_ingot"},{Slot:33b,Count:1b,id:"minecraft:light_gray_wool"},{Slot:35b,Count:1b,id:"minecraft:light_gray_wool"}]}] cppCraft 15002
replaceitem entity @s[scores={cppCraft=15002}] inventory.25 minecraft:iron_horse_armor

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:gold_ingot"},{Slot:16b,id:"minecraft:golden_chestplate"},{Slot:17b,Count:1b,id:"minecraft:gold_ingot"},{Slot:33b,Count:1b,id:"minecraft:yellow_wool"},{Slot:35b,Count:1b,id:"minecraft:yellow_wool"}]}] cppCraft 15003
replaceitem entity @s[scores={cppCraft=15003}] inventory.25 minecraft:golden_horse_armor

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:diamond"},{Slot:16b,id:"minecraft:diamond_chestplate"},{Slot:17b,Count:1b,id:"minecraft:diamond"},{Slot:33b,Count:1b,id:"minecraft:light_blue_wool"},{Slot:35b,Count:1b,id:"minecraft:light_blue_wool"}]}] cppCraft 15004
replaceitem entity @s[scores={cppCraft=15004}] inventory.25 minecraft:diamond_horse_armor

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:string"},{Slot:16b,Count:1b,id:"minecraft:string"},{Slot:17b,Count:1b,id:"minecraft:string"},{Slot:33b,Count:1b,id:"minecraft:stick"},{Slot:35b,Count:1b,id:"minecraft:stick"}]}] cppCraft 15005
replaceitem entity @s[scores={cppCraft=15005}] inventory.25 minecraft:cobweb

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:dirt"},{Slot:16b,Count:1b,id:"minecraft:dirt"},{Slot:17b,Count:1b,id:"minecraft:dirt"},{Slot:33b,Count:1b,id:"minecraft:slime_ball"},{Slot:35b,Count:1b,id:"minecraft:slime_ball"}]}] cppCraft 15006
replaceitem entity @s[scores={cppCraft=15006}] inventory.25 minecraft:clay 3

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:gold_ingot"},{Slot:16b,Count:1b,id:"minecraft:paper"},{Slot:17b,Count:1b,id:"minecraft:gold_ingot"},{Slot:33b,Count:1b,id:"minecraft:string"},{Slot:35b,Count:1b,id:"minecraft:string"}]}] cppCraft 15007
replaceitem entity @s[scores={cppCraft=15007}] inventory.25 minecraft:name_tag

scoreboard players set @s[scores={cppCraft=15001..15007}] cppClearslot 111101101
