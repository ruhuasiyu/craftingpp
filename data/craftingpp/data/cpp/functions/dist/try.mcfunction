data modify storage cpp:try Items set from block ~ ~ ~ Items
setblock ~ 255 ~ shulker_box
data remove storage cpp:dist Item.Slot
data modify block ~ 255 ~ Items[{Slot:0b}] merge from storage cpp:dist Item
loot insert ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
execute store result score #t cppValue run data modify storage cpp:try Items set from block ~ ~ ~ Items
execute if score #t cppValue matches 1.. run tag @s add cpp_dist_success
