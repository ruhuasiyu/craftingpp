data modify entity @e[type=item,tag=cpp_random_block,limit=1,sort=nearest,distance=..2] Item.id set from entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[0].id
execute store result score #temp cppRandom run data get entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[0].Count
execute store result entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[0].Count byte 1 run scoreboard players remove #temp cppRandom 1
