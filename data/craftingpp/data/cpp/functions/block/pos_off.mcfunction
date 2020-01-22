data modify storage cpp:loc_block Item set from entity @s Inventory[{Slot:-106b}]
data remove storage cpp:loc_block Item.Slot
execute store result score #put_block_cmd cppValue run data get storage cpp:loc_block Item.tag.CustomModelData
execute if score #put_block_cmd cppValue matches 12970000..12979999 run function cpp:block/pos
