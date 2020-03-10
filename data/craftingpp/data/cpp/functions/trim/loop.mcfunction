data modify storage cpp:trim Items[0].Slot set value 0b
data modify block ~ 255 ~ Items append from storage cpp:trim Items[0]
loot insert ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
data remove block ~ 255 ~ Items
data remove storage cpp:trim Items[0]
execute if data storage cpp:trim Items[0] run function cpp:trim/loop
