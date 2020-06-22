setblock ~ ~ ~ shulker_box
data modify block ~ ~ ~ Items[{Slot:0b}] merge from storage cpp:block Item
loot give @p mine ~ ~ ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ ~ ~ air
kill @s
