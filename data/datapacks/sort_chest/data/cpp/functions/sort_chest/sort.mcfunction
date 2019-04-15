execute as @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run function cpp:sort_chest/compare_id
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stick"}]}] run function cpp:sort_chest/compare_count
