setblock ~ 255 ~ chest
data modify block ~ 255 ~ Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
execute if score @s cppValue matches 1 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:oak_sapling"}]
execute if score @s cppValue matches 2 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:spruce_sapling"}]
execute if score @s cppValue matches 3 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:birch_sapling"}]
execute if score @s cppValue matches 4 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:jungle_sapling"}]
execute if score @s cppValue matches 5 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:acacia_sapling",tag:{id:"minecraft:acacia_sapling"}}]
execute if score @s cppValue matches 6 run data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:dark_oak_sapling"}]
execute store result storage cpp:golem Item.Count byte 0.99 run data get storage cpp:golem Item.Count
data modify block ~ 255 ~ Items append from storage cpp:golem Item
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~ Items
setblock ~ 255 ~ air

execute if score @s cppValue matches 1 run setblock ~ ~ ~ oak_sapling
execute if score @s cppValue matches 2 run setblock ~ ~ ~ spruce_sapling
execute if score @s cppValue matches 3 run setblock ~ ~ ~ birch_sapling
execute if score @s cppValue matches 4 run setblock ~ ~ ~ jungle_sapling
execute if score @s cppValue matches 5 run setblock ~ ~ ~ acacia_sapling
execute if score @s cppValue matches 5 align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",tag:{id:"minecraft:acacia_sapling",CustomModelData:12970100},Count:1b}]}
execute if score @s cppValue matches 6 run setblock ~ ~ ~ dark_oak_sapling
