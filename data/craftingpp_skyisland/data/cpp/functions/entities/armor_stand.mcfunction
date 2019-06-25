# 花草和树
execute as @s[tag=cpp_plants] run function cpp:plants/type
# 破坏树叶
execute as @s[tag=cpp_leaves] unless block ~ ~0.5 ~ acacia_leaves run function cpp:plants/break_leaves
# 烧炼
execute as @s[tag=cpp_furnace] run function cpp:furnace/furnace
execute as @s[tag=cpp_smoker] run function cpp:furnace/smoker
execute as @s[tag=cpp_blast_furnace] run function cpp:furnace/blast_furnace
execute as @s[tag=cpp_campfire] run function cpp:campfire/campfire
# 酿造
execute as @s[tag=cpp_brewing_stand] run function cpp:brewing_stand/brewing_stand
# 纸片人
execute as @s[tag=cpp_character] unless block ~ ~ ~ #minecraft:beds run function cpp:decor/character_break
# 破坏机器
execute as @s[tag=cpp_gold_block] unless block ~ ~ ~ gold_block run function cpp:block/machine/break_gold_block
execute as @s[tag=cpp_barrel] unless block ~ ~ ~ barrel run function cpp:block/machine/break_barrel
execute as @s[tag=cpp_chest] unless block ~ ~ ~ chest run function cpp:block/machine/break_chest
execute as @s[tag=cpp_petrified_oak_slab] unless block ~ ~ ~ petrified_oak_slab[type=double] run function cpp:block/machine/break_petrified_oak_slab
execute as @s[tag=cpp_barrier] unless block ~ ~ ~ barrier run function cpp:block/machine/break_barrier
# 机器
execute as @s[tag=cpp_muffler] as @s[distance=..5] run data merge entity @s {Silent:1b}
execute as @s[tag=cpp_machine] run function cpp:entities/machine
# 便携式工作台
execute at @s[tag=cpp_portable_crafting_table] run function cpp:tool/portable_crafting_table
execute at @s[tag=cpp_portable_crafting_machine] unless entity @a[distance=..6] run setblock ~ ~ ~ air
# 彩色告示牌
execute as @s[tag=cpp_wall_sign] unless block ~ ~ ~ #minecraft:wall_signs run function cpp:block/sign_break
execute as @s[tag=cpp_sign] unless block ~ ~ ~ #minecraft:standing_signs run function cpp:block/sign_break
# 物品展示框
execute as @s[tag=cpp_item_frame] unless entity @e[type=item_frame,distance=..0.5] run kill @s
# 发射
execute as @s[tag=cpp_bullet] run function cpp:magic/bullet_tracking
