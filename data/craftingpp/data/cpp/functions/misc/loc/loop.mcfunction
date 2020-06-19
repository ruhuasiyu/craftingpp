tag @e[type=area_effect_cloud,distance=..0.01,tag=cpp_loc_block_as,tag=cpp_temp] remove cpp_temp
# 计算三交点参数
scoreboard players operation #t1 cppValue = #x cppValue
scoreboard players operation #t1 cppValue *= #-1 cppValue
scoreboard players operation #t1 cppValue %= #100 cppValue
execute if score #t1 cppValue matches 0..1 run scoreboard players add #t1 cppValue 100
scoreboard players operation #t1 cppValue *= #100 cppValue
scoreboard players operation #t1 cppValue /= #f cppValue

scoreboard players operation #t2 cppValue = #y cppValue
scoreboard players operation #t2 cppValue *= #-1 cppValue
scoreboard players operation #t2 cppValue %= #100 cppValue
execute if score #t2 cppValue matches 0..1 run scoreboard players add #t2 cppValue 100
scoreboard players operation #t2 cppValue *= #100 cppValue
scoreboard players operation #t2 cppValue /= #g cppValue

scoreboard players operation #t3 cppValue = #z cppValue
scoreboard players operation #t3 cppValue *= #-1 cppValue
scoreboard players operation #t3 cppValue %= #100 cppValue
execute if score #t3 cppValue matches 0..1 run scoreboard players add #t3 cppValue 100
scoreboard players operation #t3 cppValue *= #100 cppValue
scoreboard players operation #t3 cppValue /= #h cppValue
# 比较交点远近
scoreboard players set #align cppValue 1
execute if score #t1 cppValue > #t2 cppValue if score #t3 cppValue > #t2 cppValue run scoreboard players set #align cppValue 2
execute if score #t1 cppValue > #t3 cppValue if score #t2 cppValue > #t3 cppValue run scoreboard players set #align cppValue 3
execute if score #align cppValue matches 1 run scoreboard players operation #t cppValue = #t1 cppValue
execute if score #align cppValue matches 2 run scoreboard players operation #t cppValue = #t2 cppValue
execute if score #align cppValue matches 3 run scoreboard players operation #t cppValue = #t3 cppValue
# 计算交点坐标
scoreboard players operation #s1 cppValue = #f cppValue
scoreboard players operation #s2 cppValue = #g cppValue
scoreboard players operation #s3 cppValue = #h cppValue
scoreboard players operation #s1 cppValue *= #t cppValue
scoreboard players operation #s2 cppValue *= #t cppValue
scoreboard players operation #s3 cppValue *= #t cppValue
scoreboard players operation #s1 cppValue /= #100 cppValue
scoreboard players operation #s2 cppValue /= #100 cppValue
scoreboard players operation #s3 cppValue /= #100 cppValue
scoreboard players operation #x cppValue += #s1 cppValue
scoreboard players operation #y cppValue += #s2 cppValue
scoreboard players operation #z cppValue += #s3 cppValue
# 存储交点
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_loc_block_as","cpp_temp"]}
execute if score #sf cppValue matches 0.. store result entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as,tag=cpp_temp,limit=1] Pos[0] double 0.01 run scoreboard players get #x cppValue
execute if score #sg cppValue matches 0.. store result entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as,tag=cpp_temp,limit=1] Pos[1] double 0.01 run scoreboard players get #y cppValue
execute if score #sh cppValue matches 0.. store result entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as,tag=cpp_temp,limit=1] Pos[2] double 0.01 run scoreboard players get #z cppValue
# 根据朝向符号调整坐标
execute if score #sf cppValue matches ..-1 store result entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as,tag=cpp_temp,limit=1] Pos[0] double -0.01 run scoreboard players get #x cppValue
execute if score #sg cppValue matches ..-1 store result entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as,tag=cpp_temp,limit=1] Pos[1] double -0.01 run scoreboard players get #y cppValue
execute if score #sh cppValue matches ..-1 store result entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as,tag=cpp_temp,limit=1] Pos[2] double -0.01 run scoreboard players get #z cppValue
# 玩家位置是否是特定方块
execute as @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as,tag=cpp_temp] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.5,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:misc/loc/check
# 若未找到，循环
execute unless entity @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_pos_pot] at @e[type=area_effect_cloud,distance=..9,tag=cpp_loc_block_as,tag=cpp_temp] if entity @s[distance=..6] run function cpp:misc/loc/loop
