loot replace block ~ ~ ~ container.0 1 loot cpp:rituals/effect
data modify entity @s Item.tag.display.Lore prepend from block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore[0]
data modify entity @s Item.tag.triggerEffect set from block ~ ~ ~ Items[{Slot:0b}].tag.triggerEffect

tellraw @p {"translate":"info.cpp.rituals.finish"}
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
data remove block ~ ~ ~ Items
tag @s remove cpp_rituals_item
