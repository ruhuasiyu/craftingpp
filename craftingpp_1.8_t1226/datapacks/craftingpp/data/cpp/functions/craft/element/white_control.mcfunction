#18401-18403	控制
scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:diamond_sword"}]}] cppCraft 18401
replaceitem entity @s[scores={cppCraft=18401}] inventory.25 minecraft:diamond_sword{display:{LocName:"cpp.item.ranch_core"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:fishing_rod"}]}] cppCraft 18402
replaceitem entity @s[scores={cppCraft=18402}] inventory.25 minecraft:fishing_rod{display:{LocName:"cpp.item.fishery_core"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:bow"}]}] cppCraft 18403
replaceitem entity @s[scores={cppCraft=18403}] inventory.25 minecraft:bow{display:{LocName:"cpp.item.hunting_core"},ench:[{id:999s}]}

scoreboard players set @a[scores={cppCraft=18401..18403}] cppClearslot 111101101