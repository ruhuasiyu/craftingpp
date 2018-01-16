#18301-18304	操作
scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:diamond_pickaxe"}]}] cppCraft 18301
replaceitem entity @s[scores={cppCraft=18301}] inventory.25 minecraft:diamond_pickaxe{display:{LocName:"cpp.item.break_hand"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:diamond_hoe"}]}] cppCraft 18302
replaceitem entity @s[scores={cppCraft=18302}] inventory.25 minecraft:diamond_hoe{display:{LocName:"cpp.item.farm_core"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:diamond_shovel"}]}] cppCraft 18303
replaceitem entity @s[scores={cppCraft=18303}] inventory.25 minecraft:diamond_shovel{display:{LocName:"cpp.item.wart_core"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:diamond_axe"}]}] cppCraft 18304
replaceitem entity @s[scores={cppCraft=18304}] inventory.25 minecraft:diamond_axe{display:{LocName:"cpp.item.forestry_core"},ench:[{id:999s}]}

scoreboard players set @a[scores={cppCraft=18301..18304}] cppClearslot 111101101