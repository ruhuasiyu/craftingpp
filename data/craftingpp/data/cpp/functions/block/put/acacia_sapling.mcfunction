tag @s add cpp_plants
execute if score #put_block_cmd cppValue matches 12971000 run tag @s add cpp_acacia_sapling
execute if score #put_block_cmd cppValue matches 12970001..12970080 run tag @s add cpp_crops
execute if score #put_block_cmd cppValue matches 12971001..12971003 run tag @s add cpp_trees
scoreboard players add #put_block_cmd cppValue 5000
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #put_block_cmd cppValue
