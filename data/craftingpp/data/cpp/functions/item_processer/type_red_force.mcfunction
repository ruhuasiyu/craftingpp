data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot:12b}]
execute as @s[predicate=cpp:has_red_force_smeltable] run function cpp:item_processer/type_red_force1

execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:carrot"}] run loot replace block ~ ~ ~ container.15 1 loot cpp:baked_carrot
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:lycoris_radiata"}}] run replaceitem block ~ ~ ~ container.15 minecraft:red_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:trifolium"}}] run replaceitem block ~ ~ ~ container.15 minecraft:white_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:blackthorn"}}] run replaceitem block ~ ~ ~ container.15 minecraft:black_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:cattail"}}] run replaceitem block ~ ~ ~ container.15 minecraft:yellow_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:marigold"}}] run replaceitem block ~ ~ ~ container.15 minecraft:orange_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:hibiscus"}}] run replaceitem block ~ ~ ~ container.15 minecraft:pink_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:hyacinth"}}] run replaceitem block ~ ~ ~ container.15 minecraft:blue_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:calamus"}}] run replaceitem block ~ ~ ~ container.15 minecraft:purple_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:wild_lilium"}}] run replaceitem block ~ ~ ~ container.15 minecraft:lime_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:bauhinia"}}] run replaceitem block ~ ~ ~ container.15 minecraft:magenta_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:fluffy_grass"}}] run replaceitem block ~ ~ ~ container.15 minecraft:feather
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:gerbera"}}] run replaceitem block ~ ~ ~ container.15 minecraft:gunpowder
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:esparto"}}] run replaceitem block ~ ~ ~ container.15 minecraft:string
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:glow_forsythia"}}] run replaceitem block ~ ~ ~ container.15 minecraft:glowstone_dust
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:glazed_shade"}}] run replaceitem block ~ ~ ~ container.15 minecraft:prismarine_shard
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:stelera"}}] run replaceitem block ~ ~ ~ container.15 minecraft:spider_eye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:forage_crystal"}}] run replaceitem block ~ ~ ~ container.15 minecraft:ghast_tear
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:isorchid"}}] run replaceitem block ~ ~ ~ container.15 minecraft:ender_pearl
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:burning_chrysanthe"}}] run replaceitem block ~ ~ ~ container.15 minecraft:blaze_powder
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:oxalis"}}] run replaceitem block ~ ~ ~ container.15 minecraft:slime_ball
