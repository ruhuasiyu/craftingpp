execute if block ~ ~-1 ~ coarse_dirt run setblock ~ ~-1 ~ dirt
execute if block ~ ~-1 ~ grass_block run setblock ~ ~-1 ~ farmland
execute if block ~ ~-1 ~ dirt run setblock ~ ~-1 ~ farmland
execute if block ~ ~-1 ~ farmland run function cpp:golem/plant_crops_check
execute if block ~ ~-1 ~ soul_sand if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:nether_wart"}] run function cpp:golem/plant_nether_wart
execute if block ~ ~-1 ~ #cpp:sapling_plantable_on run function cpp:golem/plant_trees_check
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:cocoa_beans"}] run function cpp:golem/plant_cocoa_check
