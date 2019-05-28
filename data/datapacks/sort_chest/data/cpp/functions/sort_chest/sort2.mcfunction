setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data remove block ~ ~ ~ Items
loot insert ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air

execute at @e[tag=cpp_sort_chest_half,limit=1] run setblock ~ 255 ~ shulker_box
execute at @e[tag=cpp_sort_chest_half,limit=1] run data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
execute at @e[tag=cpp_sort_chest_half,limit=1] run data remove block ~ ~ ~ Items
execute at @e[tag=cpp_sort_chest_half,limit=1] run loot insert ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute at @e[tag=cpp_sort_chest_half,limit=1] run setblock ~ 255 ~ air

execute as @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run function cpp:sort_chest/compare_id2
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stick"}]}] run function cpp:sort_chest/compare_count2
