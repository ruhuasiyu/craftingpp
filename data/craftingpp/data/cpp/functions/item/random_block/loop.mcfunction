data modify storage cpp:temp random_block.BlockEntityTag.Items append from storage cpp:temp random_block.BlockEntityTag.Items[0]
data remove storage cpp:temp random_block.BlockEntityTag.Items[0]
scoreboard players remove #rand cppValue 1
execute if score #rand cppValue matches 1.. run function cpp:item/random_block/loop
