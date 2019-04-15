execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:lycoris_radiata"}}]} run replaceitem block ~ ~ ~ container.2 red_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:trifolium"}}]} run replaceitem block ~ ~ ~ container.2 white_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:blackthorn"}}]} run replaceitem block ~ ~ ~ container.2 black_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:cattail"}}]} run replaceitem block ~ ~ ~ container.2 yellow_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:marigold"}}]} run replaceitem block ~ ~ ~ container.2 orange_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:hibiscus"}}]} run replaceitem block ~ ~ ~ container.2 pink_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:hyacinth"}}]} run replaceitem block ~ ~ ~ container.2 blue_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:calamus"}}]} run replaceitem block ~ ~ ~ container.2 purple_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:wild_lilium"}}]} run replaceitem block ~ ~ ~ container.2 lime_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:bauhinia"}}]} run replaceitem block ~ ~ ~ container.2 magenta_dye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:fluffy_grass"}}]} run replaceitem block ~ ~ ~ container.2 feather
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:gerbera"}}]} run replaceitem block ~ ~ ~ container.2 gunpowder
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:esparto"}}]} run replaceitem block ~ ~ ~ container.2 string
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:glow_forsythia"}}]} run replaceitem block ~ ~ ~ container.2 glowstone_dust
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:glazed_shade"}}]} run replaceitem block ~ ~ ~ container.2 prismarine_shard
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:stelera"}}]} run replaceitem block ~ ~ ~ container.2 spider_eye
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:forage_crystal"}}]} run replaceitem block ~ ~ ~ container.2 ghast_tear
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:isorchid"}}]} run replaceitem block ~ ~ ~ container.2 ender_pearl
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:burning_chrysanthe"}}]} run replaceitem block ~ ~ ~ container.2 blaze_powder
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{id:"cpp:oxalis"}}]} run replaceitem block ~ ~ ~ container.2 slime_ball

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players remove #temp cppValue 1
data merge block ~ ~ ~ {CookTime:0s}
