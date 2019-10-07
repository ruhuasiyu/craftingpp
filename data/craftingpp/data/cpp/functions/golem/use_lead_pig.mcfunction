fill ~ 255 ~ ~ 255 ~1 minecraft:chest
data modify block ~ 255 ~ Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
execute if score @s cppValue matches 1 run data modify block ~ 255 ~1 Items[{id:"minecraft:carrot"}] set from block ~ 255 ~ Items[{id:"minecraft:carrot"}]
execute if score @s cppValue matches 2 run data modify block ~ 255 ~1 Items[{id:"minecraft:beetroot"}] set from block ~ 255 ~ Items[{id:"minecraft:beetroot"}]
execute if score @s cppValue matches 3 run data modify block ~ 255 ~1 Items[{id:"minecraft:potato"}] set from block ~ 255 ~ Items[{id:"minecraft:potato"}]
execute store result score #temp cppValue run data get block ~ 255 ~1 Items[0].Count
execute if score #temp cppValue matches 1 run data modify block ~ 255 ~ Items[{id:0}].Slot set from block ~ 255 ~1 Items[0].Slot
execute store result block ~ 255 ~1 Items[0].Count byte 1 run scoreboard players remove #temp cppValue 1
data modify block ~ 255 ~ Items append from block ~ 255 ~1 Items[0]
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~ Items
fill ~ 255 ~ ~ 255 ~1 minecraft:air
data merge entity @e[type=minecraft:pig,distance=..1,nbt={Age:0,InLove:0},limit=1] {InLove:600}