execute as @s[nbt={SelectedItem:{id:"minecraft:stick"}}] at @s anchored eyes run function cpp:sort_chest/ray
scoreboard players reset @s cppSortOpenC
scoreboard players reset @s cppSortOpenS
