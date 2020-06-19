setblock ~ 255 ~ chest
loot insert ~ 255 ~ mine ~ ~ ~ shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
setblock ~ ~ ~ air
summon falling_block ~0.5 ~ ~0.5 {Time:20,Tags:["cpp_build_wand_block_fall"]}
data modify entity @e[type=falling_block,tag=cpp_build_wand_block_fall,limit=1] BlockState.Name set from block ~ 255 ~ Items[0].id
setblock ~ 255 ~ air