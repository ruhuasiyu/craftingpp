#18101-18102	电容/电路板
scoreboard players set @s[nbt={Inventory:[{Slot:24b,Count:1b,id:"minecraft:redstone"},{Slot:26b,Count:1b,id:"minecraft:redstone"},{Slot:16b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}},{Slot:34b,Count:1b,tag:{display:{LocName:"cpp.item.enchanted_gold"}}}]}] cppCraft 18101
replaceitem entity @s[scores={cppCraft=18101}] inventory.25 minecraft:lever{display:{LocName:"cpp.item.capacitor"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:16b,Count:1b,tag:{display:{LocName:"cpp.item.capacitor"}}},{Slot:34b,Count:1b,tag:{display:{LocName:"cpp.item.capacitor"}}},{Slot:24b,Count:1b,tag:{display:{LocName:"cpp.item.silicon_plate"}}},{Slot:26b,Count:1b,tag:{display:{LocName:"cpp.item.silicon_plate"}}}]}] cppCraft 18102
replaceitem entity @s[scores={cppCraft=18102}] inventory.25 minecraft:iron_trapdoor{display:{LocName:"cpp.item.circuit_board"},ench:[{id:999s}]}

advancement grant @s[scores={cppCraft=18101}] only cpp:lightning
scoreboard players set @a[scores={cppCraft=18101..18102}] cppClearslot 111101101