fill ~ 255 ~ ~ 255 ~1 minecraft:chest
data modify block ~ 255 ~ Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
execute if score @s cppValue matches 1 run data modify block ~ 255 ~1 Items[{id:"minecraft:oak_sapling"}] set from block ~ 255 ~ Items[{id:"minecraft:oak_sapling"}]
execute if score @s cppValue matches 2 run data modify block ~ 255 ~1 Items[{id:"minecraft:spruce_sapling"}] set from block ~ 255 ~ Items[{id:"minecraft:spruce_sapling"}]
execute if score @s cppValue matches 3 run data modify block ~ 255 ~1 Items[{id:"minecraft:birch_sapling"}] set from block ~ 255 ~ Items[{id:"minecraft:birch_sapling"}]
execute if score @s cppValue matches 4 run data modify block ~ 255 ~1 Items[{id:"minecraft:jungle_sapling"}] set from block ~ 255 ~ Items[{id:"minecraft:jungle_sapling"}]
execute if score @s cppValue matches 5 run data modify block ~ 255 ~1 Items[{id:"minecraft:acacia_sapling",tag:{id:"minecraft:acacia_sapling"}}] set from block ~ 255 ~ Items[{id:"minecraft:acacia_sapling",tag:{id:"minecraft:acacia_sapling"}}]
execute if score @s cppValue matches 6 run data modify block ~ 255 ~1 Items[{id:"minecraft:dark_oak_sapling"}] set from block ~ 255 ~ Items[{id:"minecraft:dark_oak_sapling"}]
execute store result score #temp cppValue run data get block ~ 255 ~1 Items[0].Count
execute if score #temp cppValue matches 1 run data modify block ~ 255 ~ Items[{id:0}].Slot set from block ~ 255 ~1 Items[0].Slot
execute store result block ~ 255 ~1 Items[0].Count byte 1 run scoreboard players remove #temp cppValue 1
data modify block ~ 255 ~ Items append from block ~ 255 ~1 Items[0]
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~ Items
fill ~ 255 ~ ~ 255 ~1 minecraft:air
execute if score @s cppValue matches 1 run setblock ~ ~ ~ minecraft:oak_sapling
execute if score @s cppValue matches 2 run setblock ~ ~ ~ minecraft:spruce_sapling
execute if score @s cppValue matches 3 run setblock ~ ~ ~ minecraft:birch_sapling
execute if score @s cppValue matches 4 run setblock ~ ~ ~ minecraft:jungle_sapling
execute if score @s cppValue matches 5 run setblock ~ ~ ~ minecraft:acacia_sapling
execute if score @s cppValue matches 5 align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",tag:{id:"minecraft:acacia_sapling",CustomModelData:12970100},Count:1b}]}
execute if score @s cppValue matches 6 run setblock ~ ~ ~ minecraft:dark_oak_sapling
