fill ~ 255 ~ ~ 255 ~1 shulker_box
data modify block ~ 255 ~1 Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
data modify storage cpp:dist Item set from entity @e[type=item,distance=..2,nbt=!{Age:0s},nbt=!{Age:1s},limit=1] Item
data modify storage cpp:dist Item merge value {Slot:0b}
data modify block ~ 255 ~ Items append from storage cpp:dist Item
loot insert ~ 255 ~1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~1 Items
kill @e[type=item,distance=..2,nbt=!{Age:0s},nbt=!{Age:1s},limit=1]
fill ~ 255 ~ ~ 255 ~1 air


