data modify storage cpp:putted_block Item set from entity @s SelectedItem
execute store result score #put_block_cmd cppValue run data get storage cpp:putted_block Item.tag.CustomModelData
execute if score #put_block_cmd cppValue matches 12970000..12979999 run function cpp:blocks/pos
