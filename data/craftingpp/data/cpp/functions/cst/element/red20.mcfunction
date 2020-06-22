execute store result score @s cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[scores={cppValue=12975501..12975513}] run setblock ~ ~ ~ air

execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:calliopsis"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:cyclamen"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:magenta_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:iris"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:blue_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:lilium_pumilum"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:red_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:snowdrop"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:white_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:narcissus"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:light_gray_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:cole_flower"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:yellow_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:lupine"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:crocu"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:pansy"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:purple_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:arabia_speedwell"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:silene_pendula"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:pink_dye",Count:1b}}
execute if entity @s[nbt={ArmorItems:[{},{},{},{tag:{id:"cpp:artemisia_argyi"}}]}] run summon item ~ ~ ~ {Item:{id:"minecraft:green_dye",Count:1b}}

kill @s[scores={cppValue=12975501..12975513}]
