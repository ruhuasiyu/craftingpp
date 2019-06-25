data merge entity @s[nbt={Item:{id:"minecraft:white_concrete_powder"}}] {Item:{id:"minecraft:white_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:orange_concrete_powder"}}] {Item:{id:"minecraft:orange_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:magenta_concrete_powder"}}] {Item:{id:"minecraft:magenta_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:light_blue_concrete_powder"}}] {Item:{id:"minecraft:light_blue_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:yellow_concrete_powder"}}] {Item:{id:"minecraft:yellow_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:lime_concrete_powder"}}] {Item:{id:"minecraft:lime_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:pink_concrete_powder"}}] {Item:{id:"minecraft:pink_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:gray_concrete_powder"}}] {Item:{id:"minecraft:gray_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:light_gray_concrete_powder"}}] {Item:{id:"minecraft:light_gray_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:cyan_concrete_powder"}}] {Item:{id:"minecraft:cyan_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:purple_concrete_powder"}}] {Item:{id:"minecraft:purple_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:blue_concrete_powder"}}] {Item:{id:"minecraft:blue_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:brown_concrete_powder"}}] {Item:{id:"minecraft:brown_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:green_concrete_powder"}}] {Item:{id:"minecraft:green_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:red_concrete_powder"}}] {Item:{id:"minecraft:red_concrete"}}
data merge entity @s[nbt={Item:{id:"minecraft:black_concrete_powder"}}] {Item:{id:"minecraft:black_concrete"}}

execute if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=2]
