summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,HandItems:[{},{}],Tags:["cpp_set_attribute"]}
data modify entity @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=cpp_set_attribute] HandItems[0] set from entity @s Item
execute as @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=cpp_set_attribute] run function cpp:rituals/rituals/type_attr_set
data modify entity @s Item.tag.AttributeModifiers set from entity @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=cpp_set_attribute] HandItems[1].tag.AttributeModifiers
kill @e[type=armor_stand,tag=cpp_set_attribute]

tellraw @p {"translate":"info.cpp.rituals.finish"}
data modify block ~ ~-1 ~ Items set value [{Slot:0b,id:"minecraft:glass_bottle",Count:1b},{Slot:2b,id:"minecraft:glass_bottle",Count:1b},{Slot:6b,id:"minecraft:glass_bottle",Count:1b},{Slot:8b,id:"minecraft:glass_bottle",Count:1b}]
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
tag @s remove cpp_rituals_item
