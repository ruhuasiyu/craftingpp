execute if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{id:"cpp:carbon_dust"}},{Slot:10b,tag:{id:"cpp:carbon_dust"}},{Slot:11b,tag:{id:"cpp:iron_dust"}},{Slot:12b,tag:{id:"cpp:carbon_dust"}},{Slot:20b,tag:{id:"cpp:carbon_dust"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:steel_dust
execute if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{dict:["carbon_dust"]}},{Slot:10b,tag:{dict:["carbon_dust"]}},{Slot:11b,tag:{dict:["iron_dust"]}},{Slot:12b,tag:{dict:["carbon_dust"]}},{Slot:20b,tag:{dict:["carbon_dust"]}}]} run loot replace block ~ ~ ~ container.16 loot cpp:steel_dust

execute if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{id:"cpp:enchanted_iron"}},{Slot:10b,tag:{id:"cpp:enchanted_iron"}},{Slot:11b,id:"minecraft:redstone"},{Slot:12b,tag:{id:"cpp:enchanted_iron"}},{Slot:20b,tag:{id:"cpp:enchanted_iron"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:magnet

execute if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{id:"cpp:enchanted_gold"}},{Slot:10b,tag:{id:"cpp:enchanted_gold"}},{Slot:11b,id:"minecraft:redstone"},{Slot:12b,tag:{id:"cpp:enchanted_gold"}},{Slot:20b,tag:{id:"cpp:enchanted_gold"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:time_checker

execute if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{id:"cpp:enchanted_diamond"}},{Slot:10b,tag:{id:"cpp:enchanted_diamond"}},{Slot:11b,id:"minecraft:redstone"},{Slot:12b,tag:{id:"cpp:enchanted_diamond"}},{Slot:20b,tag:{id:"cpp:enchanted_diamond"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:time_conditioner

execute if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{id:"cpp:wing_of_sky"}},{Slot:10b,tag:{id:"cpp:limb_of_ridge"}},{Slot:11b,id:"minecraft:redstone"},{Slot:12b,tag:{id:"cpp:limb_of_ridge"}},{Slot:20b,tag:{id:"cpp:wing_of_sky"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:origin_of_the_world

execute if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{id:"cpp:moon_shard"}},{Slot:10b,tag:{id:"cpp:moon_shard"}},{Slot:11b,id:"minecraft:ender_eye"},{Slot:12b,tag:{id:"cpp:moon_shard"}},{Slot:20b,tag:{id:"cpp:moon_shard"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:sun_shard

execute if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{id:"cpp:sun_shard"}},{Slot:10b,tag:{id:"cpp:sun_shard"}},{Slot:11b,id:"minecraft:nether_star"},{Slot:12b,tag:{id:"cpp:sun_shard"}},{Slot:20b,tag:{id:"cpp:sun_shard"}}]} run replaceitem block ~ ~ ~ container.16 nether_star 2
