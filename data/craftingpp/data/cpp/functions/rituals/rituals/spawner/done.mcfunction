tellraw @p {"translate":"info.cpp.rituals.finish"}
data remove block ~ ~-1 ~ Items
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
tag @s remove cpp_rituals_item

data remove entity @s Item.tag
data merge entity @s {Item:{id:"minecraft:spawner",Count:1b}}
