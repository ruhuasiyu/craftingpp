scoreboard players set @s cppValue 0
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:carrot"}] run scoreboard players set @s cppValue 1
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:beetroot"}] run scoreboard players set @s cppValue 2
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:potato"}] run scoreboard players set @s cppValue 3
execute if score @s cppValue matches 1.. run function cpp:golem/use_lead_pig

