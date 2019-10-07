fill ~ 255 ~ ~ 255 ~1 shulker_box
data modify block ~ 255 ~1 Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
data modify storage cpp_block:dist Item set from entity @e[type=minecraft:item,distance=..1.5,limit=1] Item
data modify storage cpp_block:dist Item merge value {Slot:0b}
data modify block ~ 255 ~ Items append from storage cpp_block:dist Item
loot insert ~ 255 ~1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~1 Items
kill @e[type=minecraft:item,distance=..1.5,limit=1]
fill ~ 255 ~ ~ 255 ~1 air


