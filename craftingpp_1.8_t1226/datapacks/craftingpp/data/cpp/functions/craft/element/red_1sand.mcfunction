#11001-11003	玻璃
scoreboard players set @s[nbt={Inventory:[{Slot:17b,tag:{display:{LocName:"cpp.item.steel_dust"}}}]}] cppCraft 11001
replaceitem entity @s[scores={cppCraft=11001}] inventory.17 minecraft:black_stained_glass{display:{LocName:"cpp.item.reinforced_glass"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:17b,tag:{display:{LocName:"cpp.item.rare_earth_dust"}}}]}] cppCraft 11002
replaceitem entity @s[scores={cppCraft=11002}] inventory.17 minecraft:light_blue_stained_glass{display:{LocName:"cpp.item.rare_earth_glass"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:17b,tag:{display:{LocName:"cpp.item.quartz_dust"}}}]}] cppCraft 11003
replaceitem entity @s[scores={cppCraft=11003}] inventory.17 minecraft:white_stained_glass{display:{LocName:"cpp.item.quartz_glass"},ench:[{id:999s}]}

scoreboard players set @s[scores={cppCraft=11001..11003}] cppClearslot 011000000
