replaceitem block ~ ~ ~ container.16 air

execute if block ~ ~ ~ barrel{Items:[{Slot:9b},{Slot:11b,tag:{id:"cpp:moon_shard"}}]} if data block ~ ~ ~ Items[{Slot:9b}].tag.RepairCost run function cpp:golden_anvil/remove/repair_cost

execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:binding_curse"}]}},{Slot:11b,id:"minecraft:enchanted_golden_apple"}]} run function cpp:golden_anvil/remove/binding_curse
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}},{Slot:11b,id:"minecraft:enchanted_golden_apple"}]} run function cpp:golden_anvil/remove/vanishing_curse

execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:fortune",lvl:3s}]}},{Slot:11b,tag:{id:"cpp:ancient_scroll",StoredEnchantments:[{id:"minecraft:fortune",lvl:3s}]}}]} run function cpp:golden_anvil/combine/fortune
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:looting",lvl:3s}]}},{Slot:11b,tag:{id:"cpp:ancient_scroll",StoredEnchantments:[{id:"minecraft:looting",lvl:3s}]}}]} run function cpp:golden_anvil/combine/looting
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:sweeping",lvl:3s}]}},{Slot:11b,tag:{id:"cpp:ancient_scroll",StoredEnchantments:[{id:"minecraft:sweeping",lvl:3s}]}}]} run function cpp:golden_anvil/combine/sweeping
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:lure",lvl:3s}]}},{Slot:11b,tag:{id:"cpp:ancient_scroll",StoredEnchantments:[{id:"minecraft:lure",lvl:3s}]}}]} run function cpp:golden_anvil/combine/lure
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}},{Slot:11b,tag:{id:"cpp:ancient_scroll",StoredEnchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}]} run function cpp:golden_anvil/combine/unbreaking
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:respiration",lvl:3s}]}},{Slot:11b,tag:{id:"cpp:ancient_scroll",StoredEnchantments:[{id:"minecraft:respiration",lvl:3s}]}}]} run function cpp:golden_anvil/combine/respiration
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s}]}},{Slot:11b,tag:{id:"cpp:ancient_scroll",StoredEnchantments:[{id:"minecraft:sharpness",lvl:5s}]}}]} run function cpp:golden_anvil/combine/sharpness
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}},{Slot:11b,tag:{id:"cpp:ancient_scroll",StoredEnchantments:[{id:"minecraft:power",lvl:5s}]}}]} run function cpp:golden_anvil/combine/power

execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{Enchantments:[{}]}},{Slot:11b,id:"minecraft:book"}]} run function cpp:golden_anvil/move_ench
