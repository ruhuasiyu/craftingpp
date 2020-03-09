scoreboard players set @s cppValue 0
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:oak_sapling"}] run scoreboard players set @s cppValue 1
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:spruce_sapling"}] run scoreboard players set @s cppValue 2
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:birch_sapling"}] run scoreboard players set @s cppValue 3
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:jungle_sapling"}] run scoreboard players set @s cppValue 4
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:acacia_sapling",tag:{id:"minecraft:acacia_sapling"}}] run scoreboard players set @s cppValue 5
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:dark_oak_sapling"}] run scoreboard players set @s cppValue 6
execute if score @s cppValue matches 1.. run function cpp:golem/plant_trees
