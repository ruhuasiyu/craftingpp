execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:industrious_hand"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:golem_farmer
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:industrious_hand"}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{tag:{id:"cpp:industrious_hand"}}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:break_hand"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:golem_miner
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:break_hand"}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{tag:{id:"cpp:break_hand"}}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:smart_hand"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:golem_fisher
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:smart_hand"}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{tag:{id:"cpp:smart_hand"}}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:angry_hand"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:golem_warrior
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:angry_hand"}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{tag:{id:"cpp:angry_hand"}}].tag.Enchantments
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:toughen_hand"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:golem_herder
execute if block ~ ~ ~ barrel{Items:[{tag:{id:"cpp:golem"}},{tag:{id:"cpp:toughen_hand"}}]} run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{tag:{id:"cpp:toughen_hand"}}].tag.Enchantments

execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:milk_bucket"},{tag:{id:"cpp:lemon"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:cheese

execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:experience_bottle"},{id:"minecraft:crafting_table"}]} run loot replace block ~ ~ ~ container.16 loot cpp:portable_crafting_table
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:experience_bottle"},{id:"minecraft:petrified_oak_slab"}]} run loot replace block ~ ~ ~ container.16 loot cpp:portable_crafting_machine
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:iron_ingot"},{id:"minecraft:iron_nugget"}]} run loot replace block ~ ~ ~ container.16 loot cpp:items/iron_chain

execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:oak_sign"}]} run function cpp:craft/sign
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:spruce_sign"}]} run function cpp:craft/sign
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:birch_sign"}]} run function cpp:craft/sign
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:jungle_sign"}]} run function cpp:craft/sign
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:acacia_sign"}]} run function cpp:craft/sign
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:dark_oak_sign"}]} run function cpp:craft/sign

execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:china_flag"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_china_flag
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:usa_flag"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_usa_flag
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:russia_flag"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_russia_flag
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:france_flag"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_france_flag
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:uk_flag"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_uk_flag

execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:bilibili_logo"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_bilibili
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:github_logo"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_github
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:mcmod_logo"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_mcmod
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:tcp_logo"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_tcp
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:shield"},{tag:{id:"cpp:cbl_logo"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:shield_cbl
