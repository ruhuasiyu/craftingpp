data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot:12b}]
execute as @s[predicate=cpp:has_red_force_smeltable] run function cpp:item_processer/recipes/red_force1

execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:carrot"}] run loot replace block ~ ~ ~ container.15 1 loot cpp:baked_carrot
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:lycoris_radiata"}}] run replaceitem block ~ ~ ~ container.15 red_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:trifolium"}}] run replaceitem block ~ ~ ~ container.15 white_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:blackthorn"}}] run replaceitem block ~ ~ ~ container.15 black_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:cattail"}}] run replaceitem block ~ ~ ~ container.15 yellow_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:marigold"}}] run replaceitem block ~ ~ ~ container.15 orange_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:hibiscus"}}] run replaceitem block ~ ~ ~ container.15 pink_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:hyacinth"}}] run replaceitem block ~ ~ ~ container.15 blue_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:calamus"}}] run replaceitem block ~ ~ ~ container.15 purple_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:wild_lilium"}}] run replaceitem block ~ ~ ~ container.15 lime_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:bauhinia"}}] run replaceitem block ~ ~ ~ container.15 magenta_dye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:fluffy_grass"}}] run replaceitem block ~ ~ ~ container.15 feather
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:gerbera"}}] run replaceitem block ~ ~ ~ container.15 gunpowder
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:esparto"}}] run replaceitem block ~ ~ ~ container.15 string
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:glow_forsythia"}}] run replaceitem block ~ ~ ~ container.15 glowstone_dust
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:glazed_shade"}}] run replaceitem block ~ ~ ~ container.15 prismarine_shard
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:stelera"}}] run replaceitem block ~ ~ ~ container.15 spider_eye
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:forage_crystal"}}] run replaceitem block ~ ~ ~ container.15 ghast_tear
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:isorchid"}}] run replaceitem block ~ ~ ~ container.15 ender_pearl
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:burning_chrysanthe"}}] run replaceitem block ~ ~ ~ container.15 blaze_powder
execute if data block ~ ~ ~ Items[{Slot:12b,tag:{id:"cpp:oxalis"}}] run replaceitem block ~ ~ ~ container.15 slime_ball
