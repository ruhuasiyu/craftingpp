tag @s add cpp_plants
execute if score #put_block_cmd cppValue matches 12970110 run tag @s add cpp_acacia_sapling
execute if score #put_block_cmd cppValue matches 12970110..12970116 run scoreboard players remove #put_block_cmd cppValue 10
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #put_block_cmd cppValue
