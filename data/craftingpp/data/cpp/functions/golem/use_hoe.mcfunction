execute if block ~ ~-1 ~ minecraft:farmland run function cpp:golem/use_hoe_seeds_check
execute if block ~ ~-1 ~ minecraft:soul_sand if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:nether_wart"}] run function cpp:golem/use_hoe_nether_wart
execute if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~-1 ~ minecraft:farmland
execute if block ~ ~-1 ~ minecraft:dirt run setblock ~ ~-1 ~ minecraft:farmland
execute if block ~ ~-1 ~ minecraft:coarse_dirt run setblock ~ ~-1 ~ minecraft:dirt
