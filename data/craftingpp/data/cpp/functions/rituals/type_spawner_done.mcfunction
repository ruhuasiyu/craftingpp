data remove entity @s Item.tag
data merge entity @s {Item:{id:"minecraft:spawner",Count:1b}}

tellraw @p {"translate":"info.cpp.rituals.finish"}
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
data remove block ~ ~ ~ Items
tag @s remove cpp_rituals_item
