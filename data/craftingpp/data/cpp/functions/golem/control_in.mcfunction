fill ~ 255 ~ ~ 255 ~1 shulker_box
data modify block ~ 255 ~1 Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
data modify block ~ 255 ~ Items append from block ~ ~ ~ Items[0]
loot insert ~ 255 ~1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~1 Items
data remove block ~ ~ ~ Items[0]
fill ~ 255 ~ ~ 255 ~1 air
