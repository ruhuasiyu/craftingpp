setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items append from block ~ ~ ~ Items[0]
loot spawn ~ ~-0.5 ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
data remove block ~ ~ ~ Items[0]
