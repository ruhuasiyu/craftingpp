scoreboard players set @s cppTrim 0
data modify storage cpp:trim_player Items set from entity @s Inventory
data modify storage cpp:trim_player Items[{Slot:27b}].Slot set value 0b
data modify storage cpp:trim_player Items[{Slot:28b}].Slot set value 1b
data modify storage cpp:trim_player Items[{Slot:29b}].Slot set value 2b
data modify storage cpp:trim_player Items[{Slot:30b}].Slot set value 3b
data modify storage cpp:trim_player Items[{Slot:31b}].Slot set value 4b
data modify storage cpp:trim_player Items[{Slot:32b}].Slot set value 5b
data modify storage cpp:trim_player Items[{Slot:33b}].Slot set value 6b
data modify storage cpp:trim_player Items[{Slot:34b}].Slot set value 7b
data modify storage cpp:trim_player Items[{Slot:35b}].Slot set value 8b
setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from storage cpp:trim_player Items
setblock ~ 255 ~1 shulker_box
loot insert ~ 255 ~1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
loot replace entity @s inventory.0 27 mine ~ 255 ~1 diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~ 255 ~1 air
