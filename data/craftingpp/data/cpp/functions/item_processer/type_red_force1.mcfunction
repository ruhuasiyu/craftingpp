setblock ~ 255 ~ red_shulker_box
data modify block ~ 255 ~ Items[{Slot:0b}] merge from entity @s HandItems[0]
loot replace block ~ ~ ~ container.15 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
data remove block ~ ~ ~ Items[{Slot:12b}]