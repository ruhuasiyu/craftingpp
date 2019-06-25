tellraw @p {"translate":"info.cpp.rituals.finish"}
data remove block ~ ~-1 ~ Items
scoreboard players reset @s cppTick
scoreboard players reset @s cppWandLevel
tag @s remove cpp_rituals_item

summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,HandItems:[{},{}],Tags:["cpp_set_attribute"]}
execute as @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=cpp_set_attribute] run function cpp:rituals/rituals/attr/set
data modify entity @s Item.tag.AttributeModifiers set from entity @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=cpp_set_attribute] HandItems[0].tag.AttributeModifiers
kill @e[type=armor_stand,tag=cpp_set_attribute]
