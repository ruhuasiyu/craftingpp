execute as @s[nbt={SelectedItem:{id:"minecraft:stick"}}] at @s anchored eyes run function cpp:sort_chest/ray
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:stick"}]}] at @s anchored eyes run function cpp:sort_chest/ray
scoreboard players reset @a cppSortOpenC
scoreboard players reset @a cppSortOpenS
