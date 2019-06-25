execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:feather"},{id:"minecraft:black_dye"},{id:"minecraft:painting"}]} run loot replace block ~ ~ ~ container.16 loot cpp:classical_painting

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:bottle_of_salt"}},{id:"minecraft:cooked_chicken"},{id:"minecraft:wheat"}]} run loot replace block ~ ~ ~ container.16 loot cpp:meat_floss_bread

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:lemon"}},{id:"minecraft:cooked_chicken"},{id:"minecraft:baked_potato"}]} run loot replace block ~ ~ ~ container.16 loot cpp:christmas_roast_chicken

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:tomato"}},{tag:{id:"cpp:bottle_of_salt"}},{id:"minecraft:sugar"}]} run loot replace block ~ ~ ~ container.16 loot cpp:ketchup

execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:wheat"},{id:"minecraft:salmon"},{id:"minecraft:dried_kelp"}]} run loot replace block ~ ~ ~ container.16 loot cpp:sushi

# 剪枝器
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:enchanted_iron"}},{Slot:11b,id:"minecraft:stick"},{Slot:19b,id:"minecraft:stick"}]} run loot replace block ~ ~ ~ container.16 loot cpp:grafter
# 粘土桶
execute if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:clay_ball"},{Slot:3b,id:"minecraft:clay_ball"},{Slot:11b,id:"minecraft:clay_ball"}]} run loot replace block ~ ~ ~ container.16 loot cpp:clay_bucket
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:clay_ball"},{Slot:12b,id:"minecraft:clay_ball"},{Slot:20b,id:"minecraft:clay_ball"}]} run loot replace block ~ ~ ~ container.16 loot cpp:clay_bucket
# 箱漏
execute if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:barrel"},{Slot:11b,id:"minecraft:hopper"},{Slot:20b,id:"minecraft:dropper"}]} run loot replace block ~ ~ ~ container.16 loot cpp:chest_dropper
