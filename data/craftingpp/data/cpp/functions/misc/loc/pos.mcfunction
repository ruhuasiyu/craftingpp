# 寻找与 #block_id cppValue 相同的方块，标记为 cpp_loc_block_pos 盔甲架
# 记录玩家和视线坐标
execute anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["cpp_loc_block_as"]}
execute store result score #x cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_loc_block_as,limit=1] Pos[0] 100
execute store result score #y cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_loc_block_as,limit=1] Pos[1] 100
execute store result score #z cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_loc_block_as,limit=1] Pos[2] 100
execute anchored eyes run summon area_effect_cloud ^ ^ ^1 {Tags:["cpp_loc_block_face_aec"],Invulnerable:1b,NoGravity:1b}
execute store result score #f cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_loc_block_face_aec,limit=1] Pos[0] 100
execute store result score #g cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_loc_block_face_aec,limit=1] Pos[1] 100
execute store result score #h cppValue run data get entity @e[type=area_effect_cloud,distance=..3,tag=cpp_loc_block_face_aec,limit=1] Pos[2] 100
kill @e[type=area_effect_cloud,tag=cpp_loc_block_face_aec]
# 玩家位置是否是特定方块
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:misc/loc/check
# 记录朝向的坐标
scoreboard players operation #f cppValue -= #x cppValue
scoreboard players operation #g cppValue -= #y cppValue
scoreboard players operation #h cppValue -= #z cppValue
# 记录朝向的符号
scoreboard players operation #sf cppValue = #f cppValue
scoreboard players operation #sg cppValue = #g cppValue
scoreboard players operation #sh cppValue = #h cppValue
# 根据朝向符号调整坐标值
execute if score #sf cppValue matches ..-1 run scoreboard players operation #x cppValue *= #-1 cppValue
execute if score #sg cppValue matches ..-1 run scoreboard players operation #y cppValue *= #-1 cppValue
execute if score #sh cppValue matches ..-1 run scoreboard players operation #z cppValue *= #-1 cppValue
execute if score #sf cppValue matches ..-1 run scoreboard players operation #f cppValue *= #-1 cppValue
execute if score #sg cppValue matches ..-1 run scoreboard players operation #g cppValue *= #-1 cppValue
execute if score #sh cppValue matches ..-1 run scoreboard players operation #h cppValue *= #-1 cppValue
# 获取与方块交点
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot] run function cpp:misc/loc/loop
# 若未找到，尝试上下东西南北找
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot] as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s run tp ~ ~1 ~
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:misc/loc/check
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot] as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s run tp ~ ~-2 ~
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:misc/loc/check
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot] as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s run tp ~1 ~1 ~
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:misc/loc/check
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot] as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s run tp ~-2 ~ ~
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:misc/loc/check
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot] as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s run tp ~1 ~ ~1
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:misc/loc/check
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot] as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s run tp ~ ~ ~-2
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:misc/loc/check

tag @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot,limit=1,sort=nearest] add cpp_loc_block_pos
tag @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos,limit=1,sort=nearest] remove cpp_loc_block_as
tag @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos,limit=1,sort=nearest] remove cpp_loc_block_pos_pot
tag @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos,limit=1,sort=nearest] remove cpp_temp
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as]
