scoreboard players set @s cppValue 0
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:wheat_seeds"}] run scoreboard players set @s cppValue 1
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:beetroot_seeds"}] run scoreboard players set @s cppValue 2
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:pumpkin_seeds"}] run scoreboard players set @s cppValue 3
execute if data entity @s HandItems[1].tag.BlockEntityTag.Items[{id:"minecraft:melon_seeds"}] run scoreboard players set @s cppValue 4
execute if score @s cppValue matches 1.. run function cpp:golem/use_lead_chicken
