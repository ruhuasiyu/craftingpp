loot replace entity @s weapon.mainhand 1 mine ~ ~ ~ shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute store result score @s cppValue run data modify entity @s HandItems[0].id set from storage cpp:putted_block Item.id
tag @s[scores={cppValue=0}] add cpp_block_put_pos