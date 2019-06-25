# 勤劳之手
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_hoe"}]} run loot replace block ~ ~ ~ container.16 loot cpp:industrious_hand
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_hoe"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{id:"minecraft:diamond_hoe"}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_hoe"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool set from block ~ ~ ~ Items[{id:"minecraft:diamond_hoe"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_hoe"}]} run data remove block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool.Slot
# 破坏之手
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_pickaxe"}]} run loot replace block ~ ~ ~ container.16 loot cpp:break_hand
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_pickaxe"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{id:"minecraft:diamond_pickaxe"}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_pickaxe"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool set from block ~ ~ ~ Items[{id:"minecraft:diamond_pickaxe"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_pickaxe"}]} run data remove block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool.Slot
# 灵巧之手
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:fishing_rod"}]} run loot replace block ~ ~ ~ container.16 loot cpp:smart_hand
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:fishing_rod"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{id:"minecraft:fishing_rod"}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:fishing_rod"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool set from block ~ ~ ~ Items[{id:"minecraft:fishing_rod"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:fishing_rod"}]} run data remove block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool.Slot
# 愤怒之手
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_sword"}]} run loot replace block ~ ~ ~ container.16 loot cpp:angry_hand
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_sword"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{id:"minecraft:diamond_sword"}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_sword"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool set from block ~ ~ ~ Items[{id:"minecraft:diamond_sword"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:diamond_sword"}]} run data remove block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool.Slot
# 历练之手
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:lead"}]} run loot replace block ~ ~ ~ container.16 loot cpp:toughen_hand
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:lead"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{id:"minecraft:lead"}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:lead"}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool set from block ~ ~ ~ Items[{id:"minecraft:lead"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,id:"minecraft:lead"}]} run data remove block ~ ~ ~ Items[{Slot:16b}].tag.StoredTool.Slot
