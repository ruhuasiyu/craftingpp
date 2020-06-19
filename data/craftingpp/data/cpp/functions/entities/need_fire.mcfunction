# 花草和树
execute as @e[type=armor_stand,tag=cpp_plants] run function cpp:plants/type
# 烧炼
execute as @e[type=armor_stand,tag=cpp_furnace] run function cpp:furnace/furnace
execute as @e[type=armor_stand,tag=cpp_smoker] run function cpp:furnace/smoker
execute as @e[type=armor_stand,tag=cpp_blast_furnace] run function cpp:furnace/blast_furnace
execute as @e[type=armor_stand,tag=cpp_campfire] run function cpp:campfire/campfire
# 酿造
execute as @e[type=armor_stand,tag=cpp_brewing_stand] run function cpp:brewing_stand/brewing_stand
# 纸片人
execute as @e[type=armor_stand,tag=cpp_character] unless block ~ ~ ~ #beds run function cpp:decor/character_break
# 机器
execute as @e[type=armor_stand,tag=cpp_machine] run function cpp:entities/machine
# 便携式工作台
execute at @e[type=armor_stand,tag=cpp_portable_crafting_table] unless entity @a[distance=..6] run setblock ~ ~ ~ air
execute at @e[type=armor_stand,tag=cpp_portable_crafting_machine] unless entity @a[distance=..6] run setblock ~ ~ ~ air
# 物品展示框
execute as @e[type=armor_stand,tag=cpp_item_frame] unless entity @e[type=item_frame,distance=..0.5] run kill @s
# 发射
execute as @e[type=armor_stand,tag=cpp_bullet] run function cpp:magic/bullet_tracking
