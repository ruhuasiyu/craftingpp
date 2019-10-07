# 金合欢树苗
execute if block ~ ~ ~ minecraft:acacia_sapling run function cpp:block/put_acacia_sapling
# 告示牌
execute if block ~ ~ ~ minecraft:oak_sign run function cpp:block/put_oak_sign
execute if block ~ ~ ~ minecraft:oak_wall_sign run function cpp:block/put_oak_wall_sign
# 便携式工作台
execute if block ~ ~ ~ minecraft:crafting_table if entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1,nbt={ArmorItems: [{},{},{},{tag:{id:"cpp:portable_crafting_table"}}]}] run function cpp:block/put_portable_crafting_table
# 便携式合成器
execute if block ~ ~ ~ minecraft:barrel if entity @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1,nbt={ArmorItems: [{},{},{},{tag:{id:"cpp:portable_crafting_machine"}}]}] run function cpp:block/put_portable_crafting_machine
# 机器
execute if block ~ ~ ~ minecraft:barrel as @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] run function cpp:block/put_machine_barrel
execute if block ~ ~ ~ minecraft:chest as @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] run function cpp:block/put_machine_chest
execute if block ~ ~ ~ minecraft:black_glazed_terracotta as @e[type=minecraft:armor_stand,tag=cpp_block,distance=..0.1,limit=1] run function cpp:block/put_machine_black_glazed_terracotta

