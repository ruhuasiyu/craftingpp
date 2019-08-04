execute at @s as @s[scores={cppMacType=101..501}] store result score #temp1 cppValue run data get block ~ ~ ~ Items[{Slot:3b}].tag.Damage
execute at @s as @s[scores={cppMacType=101..501}] store result block ~ ~ ~ Items[{Slot:3b}].tag.Damage int 1 run scoreboard players add #temp1 cppValue 1
execute at @s as @s[scores={cppMacType=1201..1299}] store result score #temp1 cppValue run data get block ~ ~ ~ Items[{Slot:3b}].tag.Damage
execute at @s as @s[scores={cppMacType=1201..1299}] store result block ~ ~ ~ Items[{Slot:3b}].tag.Damage int 1 run scoreboard players add #temp1 cppValue 1

execute as @s[scores={cppMacType=101}] run loot insert ~ ~ ~ loot cpp:items/grass_path
execute at @s as @s[scores={cppMacType=101}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:golden_shovel",tag:{Damage:33}}]
execute at @s as @s[scores={cppMacType=101}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:wooden_shovel",tag:{Damage:60}}]
execute at @s as @s[scores={cppMacType=101}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stone_shovel",tag:{Damage:132}}]
execute at @s as @s[scores={cppMacType=101}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:iron_shovel",tag:{Damage:251}}]
execute at @s as @s[scores={cppMacType=101}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:diamond_shovel",tag:{Damage:1562}}]

execute as @s[scores={cppMacType=201}] run loot insert ~ ~ ~ loot cpp:items/farmland
execute as @s[scores={cppMacType=202}] run loot insert ~ ~ ~ loot cpp:items/dirt
execute at @s as @s[scores={cppMacType=201..202}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:golden_hoe",tag:{Damage:33}}]
execute at @s as @s[scores={cppMacType=201..202}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:wooden_hoe",tag:{Damage:60}}]
execute at @s as @s[scores={cppMacType=201..202}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stone_hoe",tag:{Damage:132}}]
execute at @s as @s[scores={cppMacType=201..202}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:iron_hoe",tag:{Damage:251}}]
execute at @s as @s[scores={cppMacType=201..202}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:diamond_hoe",tag:{Damage:1562}}]

execute as @s[scores={cppMacType=301}] run loot insert ~ ~ ~ loot blocks/stripped_oak_log
execute as @s[scores={cppMacType=302}] run loot insert ~ ~ ~ loot blocks/stripped_spruce_log
execute as @s[scores={cppMacType=303}] run loot insert ~ ~ ~ loot blocks/stripped_birch_log
execute as @s[scores={cppMacType=304}] run loot insert ~ ~ ~ loot blocks/stripped_jungle_log
execute as @s[scores={cppMacType=305}] run loot insert ~ ~ ~ loot blocks/stripped_acacia_log
execute as @s[scores={cppMacType=306}] run loot insert ~ ~ ~ loot blocks/stripped_dark_oak_log
execute as @s[scores={cppMacType=311}] run loot insert ~ ~ ~ loot blocks/stripped_oak_wood
execute as @s[scores={cppMacType=312}] run loot insert ~ ~ ~ loot blocks/stripped_spruce_wood
execute as @s[scores={cppMacType=313}] run loot insert ~ ~ ~ loot blocks/stripped_birch_wood
execute as @s[scores={cppMacType=314}] run loot insert ~ ~ ~ loot blocks/stripped_jungle_wood
execute as @s[scores={cppMacType=315}] run loot insert ~ ~ ~ loot blocks/stripped_acacia_wood
execute as @s[scores={cppMacType=316}] run loot insert ~ ~ ~ loot blocks/stripped_dark_oak_wood
execute at @s as @s[scores={cppMacType=301..316}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:golden_axe",tag:{Damage:33}}]
execute at @s as @s[scores={cppMacType=301..316}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:wooden_axe",tag:{Damage:60}}]
execute at @s as @s[scores={cppMacType=301..316}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stone_axe",tag:{Damage:132}}]
execute at @s as @s[scores={cppMacType=301..316}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:iron_axe",tag:{Damage:251}}]
execute at @s as @s[scores={cppMacType=301..316}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:diamond_axe",tag:{Damage:1562}}]

execute as @s[scores={cppMacType=401}] run loot insert ~ ~ ~ loot cpp:items/cobblestone
execute at @s as @s[scores={cppMacType=401}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:golden_pickaxe",tag:{Damage:33}}]
execute at @s as @s[scores={cppMacType=401}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:wooden_pickaxe",tag:{Damage:60}}]
execute at @s as @s[scores={cppMacType=401}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stone_pickaxe",tag:{Damage:132}}]
execute at @s as @s[scores={cppMacType=401}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:iron_pickaxe",tag:{Damage:251}}]
execute at @s as @s[scores={cppMacType=401}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:diamond_pickaxe",tag:{Damage:1562}}]

execute as @s[scores={cppMacType=501}] run loot insert ~ ~ ~ loot cpp:items/carved_pumpkin_and_seeds
execute at @s as @s[scores={cppMacType=501}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:shears",tag:{Damage:238}}]

execute as @s[scores={cppMacType=601}] run loot insert ~ ~ ~ loot blocks/hay_block
execute as @s[scores={cppMacType=602}] run loot insert ~ ~ ~ loot cpp:items/melon
execute as @s[scores={cppMacType=603}] run loot insert ~ ~ ~ loot blocks/dried_kelp_block
execute as @s[scores={cppMacType=604}] run loot insert ~ ~ ~ loot blocks/nether_wart_block
execute as @s[scores={cppMacType=605}] run loot insert ~ ~ ~ loot blocks/slime_block
execute as @s[scores={cppMacType=606}] run loot insert ~ ~ ~ loot blocks/bone_block
execute as @s[scores={cppMacType=607}] run loot insert ~ ~ ~ loot blocks/diamond_ore
execute as @s[scores={cppMacType=608}] run loot insert ~ ~ ~ loot blocks/coal_block
execute as @s[scores={cppMacType=609}] run loot insert ~ ~ ~ loot blocks/iron_block
execute as @s[scores={cppMacType=610}] run loot insert ~ ~ ~ loot blocks/gold_block
execute as @s[scores={cppMacType=611}] run loot insert ~ ~ ~ loot blocks/redstone_block
execute as @s[scores={cppMacType=612}] run loot insert ~ ~ ~ loot blocks/lapis_block
execute as @s[scores={cppMacType=613}] run loot insert ~ ~ ~ loot blocks/diamond_block
execute as @s[scores={cppMacType=614}] run loot insert ~ ~ ~ loot blocks/emerald_block
execute as @s[scores={cppMacType=615}] run loot insert ~ ~ ~ loot cpp:items/iron_ingot
execute as @s[scores={cppMacType=616}] run loot insert ~ ~ ~ loot cpp:items/gold_ingot

execute as @s[scores={cppMacType=641}] run loot insert ~ ~ ~ loot cpp:items/leather
execute as @s[scores={cppMacType=642}] run loot insert ~ ~ ~ loot cpp:items/snow_block
execute as @s[scores={cppMacType=643}] run loot insert ~ ~ ~ loot cpp:items/glowstone
execute as @s[scores={cppMacType=644}] run loot insert ~ ~ ~ loot cpp:items/clay
execute as @s[scores={cppMacType=645}] run loot insert ~ ~ ~ loot blocks/quartz_block

execute as @s[scores={cppMacType=701}] run loot insert ~ ~ ~ loot cpp:items/glass
execute as @s[scores={cppMacType=702}] run loot insert ~ ~ ~ loot cpp:items/charcoal
execute as @s[scores={cppMacType=703}] run loot insert ~ ~ ~ loot cpp:items/green_dye
execute as @s[scores={cppMacType=704}] run loot insert ~ ~ ~ loot cpp:items/stone
execute as @s[scores={cppMacType=705}] run loot insert ~ ~ ~ loot cpp:items/nether_brick
execute as @s[scores={cppMacType=706}] run loot insert ~ ~ ~ loot blocks/cracked_stone_bricks
execute as @s[scores={cppMacType=707}] run loot insert ~ ~ ~ loot blocks/sponge
execute as @s[scores={cppMacType=708}] run loot insert ~ ~ ~ loot blocks/terracotta
execute as @s[scores={cppMacType=709}] run loot insert ~ ~ ~ loot cpp:items/dried_kelp
execute as @s[scores={cppMacType=710}] run loot insert ~ ~ ~ loot cpp:items/lime_dye

execute as @s[scores={cppMacType=721}] run loot insert ~ ~ ~ loot blocks/white_glazed_terracotta
execute as @s[scores={cppMacType=722}] run loot insert ~ ~ ~ loot blocks/orange_glazed_terracotta
execute as @s[scores={cppMacType=723}] run loot insert ~ ~ ~ loot blocks/magenta_glazed_terracotta
execute as @s[scores={cppMacType=724}] run loot insert ~ ~ ~ loot blocks/light_blue_glazed_terracotta
execute as @s[scores={cppMacType=725}] run loot insert ~ ~ ~ loot blocks/yellow_glazed_terracotta
execute as @s[scores={cppMacType=726}] run loot insert ~ ~ ~ loot blocks/lime_glazed_terracotta
execute as @s[scores={cppMacType=727}] run loot insert ~ ~ ~ loot blocks/pink_glazed_terracotta
execute as @s[scores={cppMacType=728}] run loot insert ~ ~ ~ loot blocks/gray_glazed_terracotta
execute as @s[scores={cppMacType=729}] run loot insert ~ ~ ~ loot blocks/light_gray_glazed_terracotta
execute as @s[scores={cppMacType=730}] run loot insert ~ ~ ~ loot blocks/cyan_glazed_terracotta
execute as @s[scores={cppMacType=731}] run loot insert ~ ~ ~ loot blocks/purple_glazed_terracotta
execute as @s[scores={cppMacType=732}] run loot insert ~ ~ ~ loot blocks/blue_glazed_terracotta
execute as @s[scores={cppMacType=733}] run loot insert ~ ~ ~ loot blocks/brown_glazed_terracotta
execute as @s[scores={cppMacType=734}] run loot insert ~ ~ ~ loot blocks/green_glazed_terracotta
execute as @s[scores={cppMacType=735}] run loot insert ~ ~ ~ loot blocks/red_glazed_terracotta
execute as @s[scores={cppMacType=736}] run loot insert ~ ~ ~ loot blocks/black_glazed_terracotta

execute as @s[scores={cppMacType=741}] run loot insert ~ ~ ~ loot cpp:items/iron_ingot
execute as @s[scores={cppMacType=742}] run loot insert ~ ~ ~ loot cpp:items/gold_ingot

execute as @s[scores={cppMacType=751}] run loot insert ~ ~ ~ loot blocks/smooth_quartz
execute as @s[scores={cppMacType=752}] run loot insert ~ ~ ~ loot blocks/smooth_sandstone
execute as @s[scores={cppMacType=753}] run loot insert ~ ~ ~ loot blocks/smooth_red_sandstone
execute as @s[scores={cppMacType=754}] run loot insert ~ ~ ~ loot blocks/smooth_stone


execute as @s[scores={cppMacType=761}] run loot insert ~ ~ ~ loot cpp:items/red_dye
execute as @s[scores={cppMacType=762}] run loot insert ~ ~ ~ loot cpp:items/blue_dye
execute as @s[scores={cppMacType=763}] run loot insert ~ ~ ~ loot cpp:items/light_blue_dye
execute as @s[scores={cppMacType=764}] run loot insert ~ ~ ~ loot cpp:items/white_dye
execute as @s[scores={cppMacType=765}] run loot insert ~ ~ ~ loot cpp:items/yellow_dye
execute as @s[scores={cppMacType=766}] run loot insert ~ ~ ~ loot cpp:items/light_gray_dye
execute as @s[scores={cppMacType=767}] run loot insert ~ ~ ~ loot cpp:items/magenta_dye
execute as @s[scores={cppMacType=768}] run loot insert ~ ~ ~ loot cpp:items/orange_dye
execute as @s[scores={cppMacType=769}] run loot insert ~ ~ ~ loot cpp:items/pink_dye
execute as @s[scores={cppMacType=770}] run loot insert ~ ~ ~ loot cpp:items/black_dye
execute as @s[scores={cppMacType=771}] run loot insert ~ ~ ~ loot cpp:items/baked_potato
execute as @s[scores={cppMacType=772}] run loot insert ~ ~ ~ loot cpp:baked_carrot
execute as @s[scores={cppMacType=773}] run loot insert ~ ~ ~ loot cpp:items/purple_dye

execute as @s[scores={cppMacType=780}] run loot insert ~ ~ ~ loot cpp:items/feather
execute as @s[scores={cppMacType=781}] run loot insert ~ ~ ~ loot cpp:items/gunpowder
execute as @s[scores={cppMacType=782}] run loot insert ~ ~ ~ loot cpp:items/string
execute as @s[scores={cppMacType=783}] run loot insert ~ ~ ~ loot cpp:items/glowstone_dust
execute as @s[scores={cppMacType=784}] run loot insert ~ ~ ~ loot cpp:items/prismarine_shard
execute as @s[scores={cppMacType=785}] run loot insert ~ ~ ~ loot cpp:items/spider_eye
execute as @s[scores={cppMacType=786}] run loot insert ~ ~ ~ loot cpp:items/ghast_tear
execute as @s[scores={cppMacType=787}] run loot insert ~ ~ ~ loot cpp:items/ender_pearl
execute as @s[scores={cppMacType=788}] run loot insert ~ ~ ~ loot cpp:items/blaze_powder
execute as @s[scores={cppMacType=789}] run loot insert ~ ~ ~ loot cpp:items/slime_ball


execute as @s[scores={cppMacType=801}] run loot insert ~ ~ ~ loot cpp:items/glass
execute as @s[scores={cppMacType=802}] run loot insert ~ ~ ~ loot blocks/terracotta
execute as @s[scores={cppMacType=803}] run loot insert ~ ~ ~ loot blocks/white_wool
execute as @s[scores={cppMacType=804}] run loot insert ~ ~ ~ loot blocks/white_bed
execute as @s[scores={cppMacType=805}] run loot insert ~ ~ ~ loot blocks/wet_sponge
execute as @s[scores={cppMacType=806}] run loot insert ~ ~ ~ loot cpp:items/obsidian
execute as @s[scores={cppMacType=806}] run loot insert ~ ~ ~ loot cpp:items/bucket
execute as @s[scores={cppMacType=807}] run loot insert ~ ~ ~ loot blocks/piston
execute as @s[scores={cppMacType=808}] run loot insert ~ ~ ~ loot cpp:items/potion_of_water
execute as @s[scores={cppMacType=809}] run loot insert ~ ~ ~ loot cpp:items/map

execute as @s[scores={cppMacType=811}] run loot insert ~ ~ ~ loot blocks/white_concrete
execute as @s[scores={cppMacType=812}] run loot insert ~ ~ ~ loot blocks/orange_concrete
execute as @s[scores={cppMacType=813}] run loot insert ~ ~ ~ loot blocks/magenta_concrete
execute as @s[scores={cppMacType=814}] run loot insert ~ ~ ~ loot blocks/light_blue_concrete
execute as @s[scores={cppMacType=815}] run loot insert ~ ~ ~ loot blocks/yellow_concrete
execute as @s[scores={cppMacType=816}] run loot insert ~ ~ ~ loot blocks/lime_concrete
execute as @s[scores={cppMacType=817}] run loot insert ~ ~ ~ loot blocks/pink_concrete
execute as @s[scores={cppMacType=818}] run loot insert ~ ~ ~ loot blocks/gray_concrete
execute as @s[scores={cppMacType=819}] run loot insert ~ ~ ~ loot blocks/light_gray_concrete
execute as @s[scores={cppMacType=820}] run loot insert ~ ~ ~ loot blocks/cyan_concrete
execute as @s[scores={cppMacType=821}] run loot insert ~ ~ ~ loot blocks/purple_concrete
execute as @s[scores={cppMacType=822}] run loot insert ~ ~ ~ loot blocks/blue_concrete
execute as @s[scores={cppMacType=823}] run loot insert ~ ~ ~ loot blocks/brown_concrete
execute as @s[scores={cppMacType=824}] run loot insert ~ ~ ~ loot blocks/green_concrete
execute as @s[scores={cppMacType=825}] run loot insert ~ ~ ~ loot blocks/red_concrete
execute as @s[scores={cppMacType=826}] run loot insert ~ ~ ~ loot blocks/black_concrete
execute as @s[scores={cppMacType=831}] run function cpp:item_processer/dist_leather_armor
execute as @s[scores={cppMacType=832}] run function cpp:item_processer/dist_banner
execute as @s[scores={cppMacType=899}] run loot insert ~ ~ ~ loot cpp:items/water_bucket

execute as @s[scores={cppMacType=901}] run loot insert ~ ~ ~ loot cpp:items/grass_block
execute as @s[scores={cppMacType=902}] run loot insert ~ ~ ~ loot cpp:items/mycelium

execute as @s[scores={cppMacType=1000}] run function cpp:item_processer/dist_compressor

execute as @s[scores={cppMacType=1101}] run loot insert ~ ~ ~ loot cpp:items/paper

execute as @s[scores={cppMacType=1201}] run loot insert ~ ~ ~ loot blocks/dead_bush
execute at @s as @s[scores={cppMacType=1201..1299}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:golden_sword",tag:{Damage:33}}]
execute at @s as @s[scores={cppMacType=1201..1299}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:wooden_sword",tag:{Damage:60}}]
execute at @s as @s[scores={cppMacType=1201..1299}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stone_sword",tag:{Damage:132}}]
execute at @s as @s[scores={cppMacType=1201..1299}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:iron_sword",tag:{Damage:251}}]
execute at @s as @s[scores={cppMacType=1201..1299}] run data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:diamond_sword",tag:{Damage:1562}}]

execute at @s as @s[scores={cppMacType=601..616}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 8
execute at @s as @s[scores={cppMacType=641..645}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 3
execute at @s as @s[scores={cppMacType=1000}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 63
execute at @s store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 1
