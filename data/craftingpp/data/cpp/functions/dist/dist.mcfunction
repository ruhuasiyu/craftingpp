tag @s add cpp_dist_success
setblock ~ 255 ~ shulker_box
data remove storage cpp:dist Item.Slot
data modify block ~ 255 ~ Items[{Slot:0b}] merge from storage cpp:dist Item
loot insert ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
