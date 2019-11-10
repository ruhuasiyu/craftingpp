# 调整数量
data modify storage cpp:putted_block Item.Count set value 1b
# 记录玩家和视线坐标
execute anchored eyes run summon armor_stand ^ ^ ^ {Tags:["cpp_block_ray_as"],Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute store result score #x cppValue run data get entity @e[type=armor_stand,distance=..3,tag=cpp_block_ray_as,limit=1] Pos[0] 1000
execute store result score #y cppValue run data get entity @e[type=armor_stand,distance=..3,tag=cpp_block_ray_as,limit=1] Pos[1] 1000
execute store result score #z cppValue run data get entity @e[type=armor_stand,distance=..3,tag=cpp_block_ray_as,limit=1] Pos[2] 1000
execute anchored eyes run summon armor_stand ^ ^ ^1 {Tags:["cpp_face_mk"],Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b}
execute store result score #f cppValue run data get entity @e[type=armor_stand,distance=..3,tag=cpp_face_mk,limit=1] Pos[0] 1000
execute store result score #g cppValue run data get entity @e[type=armor_stand,distance=..3,tag=cpp_face_mk,limit=1] Pos[1] 1000
execute store result score #h cppValue run data get entity @e[type=armor_stand,distance=..3,tag=cpp_face_mk,limit=1] Pos[2] 1000
kill @e[type=armor_stand,tag=cpp_face_mk]
# 玩家位置是否是特定方块
execute as @e[type=armor_stand,distance=..9,tag=cpp_block_ray_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.1,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:blocks/compare
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
execute unless entity @e[type=armor_stand,distance=..9,tag=cpp_block_put_pos] run function cpp:blocks/loop
# 若未找到，尝试找上方一格位置
execute unless entity @e[type=armor_stand,distance=..9,tag=cpp_block_put_pos] as @e[type=armor_stand,distance=..9,tag=cpp_block_ray_as] at @s run tp ~ ~1 ~
execute as @e[type=armor_stand,distance=..9,tag=cpp_block_ray_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.1,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:blocks/compare
# 若未找到，尝试找下方一格位置
execute unless entity @e[type=armor_stand,distance=..9,tag=cpp_block_put_pos] as @e[type=armor_stand,distance=..9,tag=cpp_block_ray_as] at @s run tp ~ ~-2 ~
execute as @e[type=armor_stand,distance=..9,tag=cpp_block_ray_as] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=armor_stand,distance=..0.1,tag=cpp_block] unless block ~ ~ ~ #cpp:fluid run function cpp:blocks/compare
# 放置盔甲架
execute at @e[type=armor_stand,distance=..9,tag=cpp_block_put_pos,sort=nearest,limit=1] align xyz positioned ~0.5 ~ ~0.5 run function cpp:blocks/put
kill @e[type=armor_stand,distance=..9,tag=cpp_block_ray_as]
