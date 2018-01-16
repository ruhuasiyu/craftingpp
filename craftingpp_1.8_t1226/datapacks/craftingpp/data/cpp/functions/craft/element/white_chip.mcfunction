#18001-18003	芯片
scoreboard players set @s[nbt={Inventory:[{Slot:16b,Count:1b,id:"minecraft:zombie_head"}]}] cppCraft 18001
replaceitem entity @s[scores={cppCraft=18001}] inventory.25 minecraft:redstone_torch{display:{LocName:"cpp.item.action_chip"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:16b,Count:1b,id:"minecraft:skeleton_skull"}]}] cppCraft 18002
replaceitem entity @s[scores={cppCraft=18002}] inventory.25 minecraft:redstone_torch{display:{LocName:"cpp.item.control_chip"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:16b,Count:1b,tag:{display:{LocName:"cpp.item.enderman_head"}}}]}] cppCraft 18003
replaceitem entity @s[scores={cppCraft=18003}] inventory.25 minecraft:redstone_torch{display:{LocName:"cpp.item.ender_chip"},ench:[{id:999s}]}

scoreboard players set @a[scores={cppCraft=18001..18003}] cppClearslot 111101101