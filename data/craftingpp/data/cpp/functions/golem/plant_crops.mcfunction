setblock ~ 255 ~ chest
data modify block ~ 255 ~ Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
execute if score @s cppValue matches 1 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:wheat_seeds"}]
execute if score @s cppValue matches 2 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:carrot"}]
execute if score @s cppValue matches 3 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:potato"}]
execute if score @s cppValue matches 4 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:beetroot_seeds"}]
execute if score @s cppValue matches 5 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:sweet_berries"}]
execute store result storage cpp:golem Item.Count byte 0.99 run data get storage cpp:golem Item.Count
data modify block ~ 255 ~ Items append from storage cpp:golem Item
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~ Items
setblock ~ 255 ~ air

execute if score @s cppValue matches 1 run setblock ~ ~ ~ wheat
execute if score @s cppValue matches 2 run setblock ~ ~ ~ carrots
execute if score @s cppValue matches 3 run setblock ~ ~ ~ potatoes
execute if score @s cppValue matches 4 run setblock ~ ~ ~ beetroots
execute if score @s cppValue matches 5 run setblock ~ ~ ~ sweet_berry_bush