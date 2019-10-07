kill @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1]

execute if block ~ ~ ~ minecraft:oak_wall_sign[facing=north] run summon armor_stand ~ ~ ~0.4373 {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"]}
execute if block ~ ~ ~ minecraft:oak_wall_sign[facing=east] run summon armor_stand ~-0.4373 ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[90.0f,0.0f]}
execute if block ~ ~ ~ minecraft:oak_wall_sign[facing=south] run summon armor_stand ~ ~ ~-0.4373 {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[180.0f,0.0f]}
execute if block ~ ~ ~ minecraft:oak_wall_sign[facing=west] run summon armor_stand ~0.4373 ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[-90.0f,0.0f]}
data modify entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.5,limit=1] ArmorItems[3] set from storage cpp_block:temp tag
data modify entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.5,limit=1] ArmorItems[3].Count set value 1b
execute store result entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.5,limit=1] ArmorItems[3].tag.CustomModelData int 1 run data get entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.5,limit=1] ArmorItems[3].tag.CustomModelData 1.00000773