execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:sugar"},{id:"minecraft:rotten_flesh"},{id:"minecraft:glistering_melon_slice"},{id:"minecraft:gunpowder"},{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:acid

execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:cocoa_beans"},{id:"minecraft:bone_meal"},{id:"minecraft:pumpkin"},{id:"minecraft:fermented_spider_eye"},{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:soda_water

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:bottle_of_salt"}},{id:"minecraft:pumpkin"},{id:"minecraft:bowl"},{id:"minecraft:carrot"},{id:"minecraft:potato"}]} run loot replace block ~ ~ ~ container.16 loot cpp:raw_colorful_vegetable

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:bottle_of_salt"}},{id:"minecraft:porkchop"},{id:"minecraft:bowl"},{id:"minecraft:carrot"},{id:"minecraft:potato"}]} run loot replace block ~ ~ ~ container.16 loot cpp:raw_braised_pork_with_potatoes

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:bottle_of_salt"}},{id:"minecraft:beef"},{id:"minecraft:bowl"},{id:"minecraft:carrot"},{id:"minecraft:potato"}]} run loot replace block ~ ~ ~ container.16 loot cpp:raw_braised_beef_with_potatoes

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:bottle_of_salt"}},{id:"minecraft:rabbit"},{id:"minecraft:bowl"},{id:"minecraft:carrot"},{id:"minecraft:potato"}]} run loot replace block ~ ~ ~ container.16 loot cpp:raw_rabbit_stew

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:bottle_of_salt"}},{id:"minecraft:cooked_cod"},{id:"minecraft:baked_potato"},{tag:{id:"cpp:ketchup"}},{id:"minecraft:bowl"}]} run loot replace block ~ ~ ~ container.16 loot cpp:fish_and_chips

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:ketchup"}},{tag:{id:"cpp:tomato"}},{tag:{id:"cpp:cheese"}},{id:"minecraft:cooked_beef"},{id:"minecraft:bread"}]} run loot replace block ~ ~ ~ container.16 loot cpp:burger

execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:ketchup"}},{tag:{id:"cpp:tomato"}},{tag:{id:"cpp:cheese"}},{id:"minecraft:cooked_porkchop"},{id:"minecraft:wheat"}]} run loot replace block ~ ~ ~ container.16 loot cpp:items/pizza

# 热带鱼桶
execute if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:tropical_fish_bucket"},{Slot:2b},{Slot:3b},{Slot:10b},{Slot:11b}]} run function cpp:craft/fish/type
# 玻璃镐
execute if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:glass"},{Slot:3b,id:"minecraft:glass"},{Slot:11b,id:"minecraft:stick"},{Slot:20b,id:"minecraft:stick"}]} run loot replace block ~ ~ ~ container.16 loot cpp:glass_pickaxe
# 扫帚
execute if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:stick"},{Slot:11b,id:"minecraft:stick"},{Slot:19b,id:"minecraft:firework_rocket"},{Slot:20b,id:"minecraft:hay_block"},{Slot:21b,id:"minecraft:firework_rocket"}]} run loot replace block ~ ~ ~ container.16 loot cpp:broom
# 鸡窝
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:wheat"},{Slot:20b,id:"minecraft:wheat"},{Slot:12b,id:"minecraft:wheat"},{Slot:19b,id:"minecraft:wheat"},{Slot:21b,id:"minecraft:wheat"}]} run loot replace block ~ ~ ~ container.16 loot cpp:roost
# 帽子
execute if block ~ ~ ~ barrel{Items:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:10b},{Slot:12b}]} run function cpp:craft/items5_hat1
execute if block ~ ~ ~ barrel{Items:[{Slot:10b},{Slot:11b},{Slot:12b},{Slot:19b},{Slot:21b}]} run function cpp:craft/items5_hat2
# 十字形
execute if block ~ ~ ~ barrel{Items:[{Slot:2b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:20b}]} run function cpp:craft/items5_cross
