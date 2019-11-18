loot replace entity @s weapon.mainhand 1 mine ~ ~ ~ shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute store result score @s cppValue run data modify entity @s HandItems[0].id set from storage cpp:loc_block Item.id
execute if block ~ ~ ~ fire if data storage cpp:loc_block Item{id:"minecraft:fire"} run scoreboard players set @s cppValue 0
execute if block ~ ~ ~ water if data storage cpp:loc_block Item{id:"minecraft:water"} run scoreboard players set @s cppValue 0
execute if block ~ ~ ~ lava if data storage cpp:loc_block Item{id:"minecraft:lava"} run scoreboard players set @s cppValue 0
execute if block ~ ~ ~ barrier if data storage cpp:loc_block Item{id:"minecraft:barrier"} run scoreboard players set @s cppValue 0
tag @s[scores={cppValue=0}] add cpp_loc_block_pos_pot
