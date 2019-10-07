setblock ~ 255 ~ shulker_box
loot insert ~ 255 ~ kill @s
data remove block ~ 255 ~ Items[{id:"minecraft:mutton"}]
data modify block ~ 255 ~ Items[0].Count set value 2
loot spawn ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
data merge entity @s {Sheared:1b}