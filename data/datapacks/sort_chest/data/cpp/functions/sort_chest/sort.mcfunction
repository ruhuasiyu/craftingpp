setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data remove block ~ ~ ~ Items
loot insert ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air

execute as @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run function cpp:sort_chest/compare_id
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stick"}]}] run function cpp:sort_chest/compare_count
