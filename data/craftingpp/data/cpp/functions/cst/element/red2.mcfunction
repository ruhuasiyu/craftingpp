execute store result score @s cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[scores={cppValue=12975061..12975080}] run setblock ~ ~ ~ air

execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:lycoris_radiata"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:trifolium"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:white_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:blackthorn"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:cattail"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:marigold"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:orange_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:hibiscus"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:pink_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:hyacinth"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:blue_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:calamus"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:wild_lilium"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:lime_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:bauhinia"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:fluffy_grass"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:feather",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:gerbera"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:gunpowder",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:esparto"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:string",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:glow_forsythia"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:glowstone_dust",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:glazed_shade"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:prismarine_shard",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:stelera"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:spider_eye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:forage_crystal"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:ghast_tear",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:isorchid"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:ender_pearl",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:burning_chrysanthe"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:blaze_powder",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:oxalis"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:slime_ball",Count:1b}}

kill @s[scores={cppValue=12975061..12975080}]
