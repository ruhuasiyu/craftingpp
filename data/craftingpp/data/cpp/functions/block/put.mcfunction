setblock ~ ~ ~ barrel
data modify storage cpp:loc_block Item.Count set value 1b
# 预处理朝向、标签
execute if block ~ ~ ~ barrel run function cpp:block/put/barrel_pre
execute if block ~ ~ ~ chest run function cpp:block/put/chest_pre
execute if block ~ ~ ~ oak_sign run execute as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:block/put/oak_sign_pre
execute if block ~ ~ ~ oak_wall_sign run function cpp:block/put/oak_wall_sign_pre
# 放置头部物
execute unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"]}
data modify entity @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] ArmorItems[3] set from storage cpp:loc_block Item
# 调整头部物
execute if block ~ ~ ~ acacia_leaves as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:block/put/acacia_leaves
execute if block ~ ~ ~ acacia_sapling as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:block/put/acacia_sapling
execute if block ~ ~ ~ barrel as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:block/put/barrel
execute if block ~ ~ ~ carved_pumpkin as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:block/put/carved_pumpkin
execute if block ~ ~ ~ oak_sign as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run execute as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:block/put/oak_sign
execute if block ~ ~ ~ oak_wall_sign as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:block/put/oak_wall_sign
# 杀死位置标记物
kill @s
