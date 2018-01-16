#18501-18505	末影
scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:compass"}]}] cppCraft 18501
replaceitem entity @s[scores={cppCraft=18501}] inventory.25 minecraft:compass{display:{LocName:"cpp.item.magnet"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:clock"}]}] cppCraft 18502
replaceitem entity @s[scores={cppCraft=18502}] inventory.25 minecraft:clock{display:{LocName:"cpp.item.time_conditioner"},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:note_block"}]}] cppCraft 18503
replaceitem entity @s[scores={cppCraft=18503}] inventory.25 minecraft:note_block{display:{LocName:"cpp.item.ring_clock"},ench:[{id:999s}]}

#scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:ender_eye"}]}] cppCraft 18504
#replaceitem entity @s[scores={cppCraft=18504}] inventory.25 minecraft:squid_spawn_egg{display:{LocName:"cpp.item.ores_finder"},EntityTag:{Tags:["cpp_ore_finder","cpp_dead"],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],DeathLootTable:"minecraft:empty",CustomName:""},ench:[{id:999s}]}

scoreboard players set @s[nbt={Inventory:[{Slot:34b,Count:1b,id:"minecraft:ender_pearl"}]}] cppCraft 18505
replaceitem entity @s[scores={cppCraft=18505}] inventory.25 minecraft:ender_pearl{display:{LocName:"cpp.item.transport_ball"},ench:[{id:999s}]}

scoreboard players set @a[scores={cppCraft=18501..18505}] cppClearslot 111101101


