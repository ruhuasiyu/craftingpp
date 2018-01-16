scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.ranch_core"}}},{Slot:3b,id:"minecraft:chicken_spawn_egg"},{Slot:4b,id:"minecraft:wheat_seeds"}]}] cppCraft 27401
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.ranch_core"}}},{Slot:3b,id:"minecraft:cow_spawn_egg"},{Slot:4b,id:"minecraft:wheat"}]}] cppCraft 27402
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.ranch_core"}}},{Slot:3b,id:"minecraft:mooshroom_spawn_egg"},{Slot:4b,id:"minecraft:wheat"}]}] cppCraft 27403
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.ranch_core"}}},{Slot:3b,id:"minecraft:sheep_spawn_egg"},{Slot:4b,id:"minecraft:wheat"}]}] cppCraft 27404
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.ranch_core"}}},{Slot:3b,id:"minecraft:pig_spawn_egg"},{Slot:4b,id:"minecraft:potato"}]}] cppCraft 27405
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.ranch_core"}}},{Slot:3b,id:"minecraft:rabbit_spawn_egg"},{Slot:4b,id:"minecraft:carrot"}]}] cppCraft 27406

scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.fishery_core"}}},{Slot:3b,id:"minecraft:squid_spawn_egg"},{Slot:4b,id:"minecraft:water_bucket"}]}] cppCraft 27501
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.fishery_core"}}},{Slot:3b,id:"minecraft:guardian_spawn_egg"},{Slot:4b,id:"minecraft:water_bucket"}]}] cppCraft 27502
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.fishery_core"}}},{Slot:3b,id:"minecraft:fishing_rod"},{Slot:4b,id:"minecraft:water_bucket"}]}] cppCraft 27503

scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.hunting_core"}}},{Slot:3b,id:"minecraft:zombie_spawn_egg"},{Slot:4b,id:"minecraft:chicken"}]}] cppCraft 27601
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.hunting_core"}}},{Slot:3b,id:"minecraft:skeleton_spawn_egg"},{Slot:4b,id:"minecraft:mutton"}]}] cppCraft 27602
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.hunting_core"}}},{Slot:3b,id:"minecraft:creeper_spawn_egg"},{Slot:4b,id:"minecraft:porkchop"}]}] cppCraft 27603
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.hunting_core"}}},{Slot:3b,id:"minecraft:spider_spawn_egg"},{Slot:4b,id:"minecraft:rabbit"}]}] cppCraft 27604
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.hunting_core"}}},{Slot:3b,id:"minecraft:witch_spawn_egg"},{Slot:4b,id:"minecraft:beef"}]}] cppCraft 27605
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.hunting_core"}}},{Slot:3b,id:"minecraft:slime_spawn_egg"},{Slot:4b,tag:{display:{LocName:"cpp.item.parrot"}}}]}] cppCraft 27606
scoreboard players set @s[nbt={Items:[{Slot:2b,tag:{display:{LocName:"cpp.item.hunting_core"}}},{Slot:3b,id:"minecraft:enderman_spawn_egg"},{Slot:4b,tag:{display:{LocName:"cpp.item.bear"}}}]}] cppCraft 27607

scoreboard players add @s[scores={cppCraft=27401..27699}] cppTicks 1
execute as @s[scores={cppCraft=27401..27699,cppTicks=1200..}] run function cpp:auto/ranch_action
