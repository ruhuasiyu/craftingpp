# 预处理朝向、标签
execute if block ~ ~ ~ barrel run function cpp:blocks/put/barrel
execute if block ~ ~ ~ chest run function cpp:blocks/put/chest
execute if block ~ ~ ~ oak_sign run function cpp:blocks/put/oak_sign
execute if block ~ ~ ~ oak_wall_sign run function cpp:blocks/put/oak_wall_sign
# 放置头部物
execute unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"]}
data modify entity @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] ArmorItems[3] set from storage cpp:loc_block Item
# 调整头部物
execute if block ~ ~ ~ acacia_leaves as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:blocks/put/acacia_leaves1
execute if block ~ ~ ~ acacia_sapling as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:blocks/put/acacia_sapling1
execute if block ~ ~ ~ barrel as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:blocks/put/barrel1
execute if block ~ ~ ~ carved_pumpkin as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:blocks/put/carved_pumpkin1
execute if block ~ ~ ~ chest as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:blocks/put/chest1
execute if block ~ ~ ~ gold_block as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:blocks/put/gold_block1
execute if block ~ ~ ~ oak_sign as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:blocks/put/oak_sign1
execute if block ~ ~ ~ oak_wall_sign as @e[type=armor_stand,tag=cpp_block,distance=..0.5,limit=1] run function cpp:blocks/put/oak_wall_sign1
# 重置存储
data remove storage cpp:loc_block Item
# 杀死位置标记物
kill @s
