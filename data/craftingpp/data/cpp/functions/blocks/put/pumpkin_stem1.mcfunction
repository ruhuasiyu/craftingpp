tag @s add cpp_crops
execute if score #put_block_cmd cppValue matches 12970001..12970020 run scoreboard players add #put_block_cmd cppValue 3000
execute if score #put_block_cmd cppValue matches 12973081..12973100 run scoreboard players remove #put_block_cmd cppValue 20
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #put_block_cmd cppValue
data remove storage cpp:loc_block Item
