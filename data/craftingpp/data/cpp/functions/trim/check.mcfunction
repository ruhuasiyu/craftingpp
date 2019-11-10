execute as @s[nbt={SelectedItem:{id:"minecraft:stick"}}] at @s anchored eyes run function cpp:trim/ray
scoreboard players reset @s cppTrimChest
scoreboard players reset @s cppTrimShulker
