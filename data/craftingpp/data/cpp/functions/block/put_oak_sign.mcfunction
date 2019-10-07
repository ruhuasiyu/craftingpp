kill @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1]

execute if block ~ ~ ~ #minecraft:standing_signs[rotation=0] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[22.5f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=2] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[45.0f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=3] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[67.5f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=4] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[90.0f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=5] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[112.5f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=6] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[135.0f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=7] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[157.5f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=8] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[180.0f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=9] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[202.5f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=10] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[225.0f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=11] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[247.5f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=12] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[270.0f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=13] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[292.5f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=14] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[315.0f,0.0f]}
execute if block ~ ~ ~ #minecraft:standing_signs[rotation=15] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[337.5f,0.0f]}

data modify entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] ArmorItems[3] set from storage cpp_block:temp tag
data modify entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] ArmorItems[3].Count set value 1b
execute store result entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData int 1 run data get entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] ArmorItems[3].tag.CustomModelData 1.00001545
