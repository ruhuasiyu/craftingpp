# 移除旧Lore
execute if data entity @s Item.tag.AttributeModifiers[{Slot:"mainhand"}] run data remove entity @s Item.tag.display.Lore[-1]
execute if data entity @s Item.tag.AttributeModifiers[{Slot:"mainhand"}] run data remove entity @s Item.tag.display.Lore[-1]
execute if data entity @s Item.tag.AttributeModifiers[{Slot:"mainhand"}] run data remove entity @s Item.tag.display.Lore[-1]
execute if data entity @s Item.tag.AttributeModifiers[{Slot:"mainhand"}] run data remove entity @s Item.tag.display.Lore[-1]

loot replace block ~ ~ ~ container.0 1 loot cpp:rituals/attr
data modify entity @s Item.tag.AttributeModifiers set from block ~ ~ ~ Items[0].tag.AttributeModifiers
# 设置新Lore
execute if data entity @s Item.tag.AttributeModifiers[{Slot:"mainhand"}] run function cpp:rituals/recipes/attr_mainhand

tellraw @p {"translate":"info.cpp.rituals.finish"}
data remove block ~ ~ ~ Items
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
tag @s remove cpp_rituals_item
