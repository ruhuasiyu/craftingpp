#16001-16008	黄色地之力
scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:rotten_flesh"},{Slot:16b,Count:1b,id:"minecraft:speckled_melon"},{Slot:17b,Count:1b,id:"minecraft:rotten_flesh"},{Slot:24b,Count:1b,id:"minecraft:sugar"},{Slot:26b,Count:1b,id:"minecraft:sugar"}]}] cppCraft 16001
scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:gunpowder"},{Slot:16b,Count:1b,id:"minecraft:speckled_melon"},{Slot:17b,Count:1b,id:"minecraft:gunpowder"},{Slot:24b,Count:1b,id:"minecraft:bone_meal"},{Slot:26b,Count:1b,id:"minecraft:bone_meal"}]}] cppCraft 16001
replaceitem entity @s[scores={cppCraft=16001}] inventory.25 minecraft:potion{HideFlags:63,CustomPotionColor:2652180,display:{LocName:"cpp.item.biology_acid"}}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:fermented_spider_eye"},{Slot:16b,Count:1b,id:"minecraft:pumpkin"},{Slot:17b,Count:1b,id:"minecraft:fermented_spider_eye"},{Slot:24b,Count:1b,id:"minecraft:cocoa_beans"},{Slot:26b,Count:1b,id:"minecraft:cocoa_beans"}]}] cppCraft 16002
scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:ender_pearl"},{Slot:16b,Count:1b,id:"minecraft:pumpkin"},{Slot:17b,Count:1b,id:"minecraft:ender_pearl"},{Slot:24b,Count:1b,id:"minecraft:wheat"},{Slot:26b,Count:1b,id:"minecraft:wheat"}]}] cppCraft 16002
replaceitem entity @s[scores={cppCraft=16002}] inventory.25 minecraft:potion{HideFlags:63,CustomPotionColor:3945070,display:{LocName:"cpp.item.alkaloid"}}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,Count:1b,id:"minecraft:piston"},{Slot:16b,Count:1b,id:"minecraft:piston"},{Slot:17b,Count:1b,id:"minecraft:piston"},{Slot:24b,Count:1b,id:"minecraft:piston"},{Slot:26b,Count:1b,id:"minecraft:piston"}]}] cppCraft 16003
replaceitem entity @s[scores={cppCraft=16003}] inventory.25 minecraft:potion{HideFlags:63,CustomPotionColor:16448250,display:{LocName:"cpp.item.bottle_of_air"}}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,tag:{display:{LocName:"cpp.item.course_silicon"}}},{Slot:16b,tag:{display:{LocName:"cpp.item.course_silicon"}}},{Slot:17b,tag:{display:{LocName:"cpp.item.course_silicon"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.bottle_of_air"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.bottle_of_air"}}}]}] cppCraft 16004
replaceitem entity @s[scores={cppCraft=16004}] inventory.25 minecraft:potion{HideFlags:63,CustomPotionColor:11842740,display:{LocName:"cpp.item.silicon_dust"}}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,tag:{display:{LocName:"cpp.item.rare_earth_salt"}}},{Slot:16b,tag:{display:{LocName:"cpp.item.rare_earth_salt"}}},{Slot:17b,tag:{display:{LocName:"cpp.item.rare_earth_salt"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.alkaloid"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.alkaloid"}}}]}] cppCraft 16005
replaceitem entity @s[scores={cppCraft=16005}] inventory.25 minecraft:potion{HideFlags:63,CustomPotionColor:6579300,display:{LocName:"cpp.item.alkaloid_rare_earth"}}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,tag:{display:{LocName:"cpp.item.alkaloid_rare_earth"}}},{Slot:16b,tag:{display:{LocName:"cpp.item.alkaloid_rare_earth"}}},{Slot:17b,tag:{display:{LocName:"cpp.item.alkaloid_rare_earth"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.biology_acid"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.biology_acid"}}}]}] cppCraft 16006
replaceitem entity @s[scores={cppCraft=16006}] inventory.25 minecraft:potion{HideFlags:63,CustomPotionColor:7895160,display:{LocName:"cpp.item.rare_earth_dust"}}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,tag:{display:{LocName:"cpp.item.silicon_dust"}}},{Slot:16b,id:"minecraft:piston",Count:1b},{Slot:17b,tag:{display:{LocName:"cpp.item.silicon_dust"}}},{Slot:24b,tag:{display:{LocName:"cpp.item.biology_acid"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.biology_acid"}}}]}] cppCraft 16007
replaceitem entity @s[scores={cppCraft=16007}] inventory.25 minecraft:heavy_weighted_pressure_plate{display:{LocName:"cpp.item.silicon_plate"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:15b,id:"minecraft:clay_ball",Count:1b},{Slot:16b,id:"minecraft:clay_ball",Count:1b},{Slot:17b,id:"minecraft:clay_ball",Count:1b},{Slot:24b,tag:{display:{LocName:"cpp.item.bottle_of_salt"}}},{Slot:26b,tag:{display:{LocName:"cpp.item.bottle_of_salt"}}}]}] cppCraft 16008
replaceitem entity @s[scores={cppCraft=16008}] inventory.25 minecraft:potion{HideFlags:63,CustomPotionColor:5263440,display:{LocName:"cpp.item.rare_earth_salt"}}

scoreboard players set @s[scores={cppCraft=16001..16008}] cppClearslot 111101101
