execute unless data storage cpp:block Item.tag.id run data modify storage cpp:block Item.tag.cpp_tag set value ['machine','need_fire','barrel']
data modify storage cpp:block Item.Count set value 1b

setblock ~ ~ ~ barrel{CustomName:'{"translate":"block.minecraft.petrified_oak_slab"}'}
execute if data storage cpp:block Item.tag{cpp_tag:['chest']} run setblock ~ ~ ~ chest
execute if data storage cpp:block Item.tag{cpp_tag:['gold_block']} run setblock ~ ~ ~ gold_block
execute if data storage cpp:block Item.tag{cpp_tag:['leaves']} run setblock ~ ~ ~ acacia_leaves[persistent=true]
execute if data storage cpp:block Item.tag{cpp_tag:['plants']} run setblock ~ ~ ~ acacia_sapling
data modify block ~ ~ ~ CustomName set from storage cpp:block Item.tag.display.Name

execute if score #facing cppValue matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[0.0f,0.0f]}
execute if score #facing cppValue matches 1 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[90.0f,0.0f]}
execute if score #facing cppValue matches 2 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[180.0f,0.0f]}
execute if score #facing cppValue matches 3 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"],Rotation:[270.0f,0.0f]}
execute as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:block/put/petrified_oak_slab_tag
