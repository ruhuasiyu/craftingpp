#12001			粗硅
scoreboard players set @s[nbt={Inventory:[{Slot:17b,tag:{display:{LocName:"cpp.item.quartz_dust"}}},{Slot:26b,id:"minecraft:experience_bottle",Count:1b},{Slot:16b,id:"minecraft:flint",Count:1b}]}] cppCraft 12001
replaceitem entity @s[scores={cppCraft=12001}] inventory.17 minecraft:potion{CustomPotionColor:9868950,display:{LocName:"cpp.item.course_silicon"}}

scoreboard players set @a[scores={cppCraft=12001..12001}] cppClearslot 011000000
