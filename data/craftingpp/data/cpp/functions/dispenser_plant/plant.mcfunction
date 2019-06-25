execute as @s[nbt={Item:{id:"minecraft:wheat_seeds"}}] run setblock ~ ~ ~ wheat
execute as @s[nbt={Item:{id:"minecraft:beetroot_seeds"}}] run setblock ~ ~ ~ beetroots
execute as @s[nbt={Item:{id:"minecraft:carrot"}}] run setblock ~ ~ ~ carrots
execute as @s[nbt={Item:{id:"minecraft:potato"}}] run setblock ~ ~ ~ potatoes
execute as @s[nbt={Item:{id:"minecraft:pumpkin_seeds"}}] run setblock ~ ~ ~ pumpkin_stem
execute as @s[nbt={Item:{id:"minecraft:melon_seeds"}}] run setblock ~ ~ ~ melon_stem
execute as @s[nbt={Item:{id:"minecraft:nether_wart"}}] run setblock ~ ~ ~ nether_wart
execute as @s[nbt={Item:{id:"minecraft:chorus_flower"}}] run setblock ~ ~ ~ chorus_flower
execute as @s[nbt={Item:{id:"minecraft:brown_mushroom"}}] run setblock ~ ~ ~ brown_mushroom
execute as @s[nbt={Item:{id:"minecraft:red_mushroom"}}] run setblock ~ ~ ~ red_mushroom
execute as @s[nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~1 ~ ~ #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[facing=east]
execute as @s[nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~-1 ~ ~ #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[facing=west]
execute as @s[nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~ ~ ~1 #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[facing=south]
execute as @s[nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~ ~ ~-1 #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[facing=north]
execute as @s[nbt={Item:{id:"minecraft:oak_sapling"}}] run setblock ~ ~ ~ oak_sapling
execute as @s[nbt={Item:{id:"minecraft:spruce_sapling"}}] run setblock ~ ~ ~ spruce_sapling
execute as @s[nbt={Item:{id:"minecraft:birch_sapling"}}] run setblock ~ ~ ~ birch_sapling
execute as @s[nbt={Item:{id:"minecraft:jungle_sapling"}}] run setblock ~ ~ ~ jungle_sapling
execute as @s[nbt={Item:{id:"minecraft:acacia_sapling"}}] run setblock ~ ~ ~ acacia_sapling
execute as @s[nbt={Item:{id:"minecraft:dark_oak_sapling"}}] run setblock ~ ~ ~ dark_oak_sapling

execute as @s[nbt={Item:{id:"minecraft:acacia_sapling"}}] align xyz positioned ~0.5 ~ ~0.5 run function cpp:dispenser_plant/plant_cpp

kill @s