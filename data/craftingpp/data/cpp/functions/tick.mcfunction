# 世界生成
execute if score $skyislandMode cppConfig matches 0 at @a[predicate=cpp:in_overworld] run function cpp:generate/check

# 僵尸-破坏火把
execute if score $doZombieImproving cppConfig matches 1 as @e[type=#cpp:zombies] at @s run function cpp:enhance_mobs/zombie_break
# 动物-黑暗移动
execute if score $doDarkAnimalSpawning cppConfig matches 1 as @e[type=#cpp:animals,tag=cpp_dark_animal] at @s if entity @a[distance=..16] run function cpp:dark_animals/attract
# 村民-被绿宝石吸引
execute as @e[type=#cpp:villagers] at @s if entity @a[distance=1..10,predicate=cpp:hand_emerald_block] run function cpp:misc/attract_villager

# 防止变黑
execute as @e[type=minecraft:armor_stand,tag=cpp_need_fire] run data merge entity @s {Fire:32767s}
# 机器
execute as @e[type=minecraft:armor_stand,tag=cpp_machine] at @s run function cpp:block/machine
# 日石月石
execute as @e[type=minecraft:armor_stand,tag=cpp_gold_block] at @s unless block ~ ~ ~ gold_block run function cpp:block/break/gold_block
# 树叶
execute as @e[type=minecraft:armor_stand,tag=cpp_leaves] at @s unless block ~ ~ ~ acacia_leaves run function cpp:block/break/acacia_leaves
# 花草树苗
execute as @e[type=minecraft:armor_stand,tag=cpp_crops] at @s run function cpp:crops/type
execute as @e[type=minecraft:armor_stand,tag=cpp_plants] at @s run function cpp:plants/type
# 告示牌
execute as @e[type=minecraft:armor_stand,tag=cpp_sign] at @s unless block ~ ~ ~ #cpp:oak_signs run function cpp:block/break/oak_sign
# 烧炼
execute as @e[type=minecraft:armor_stand,tag=cpp_furnace] at @s run function cpp:furnace/furnace
execute as @e[type=minecraft:armor_stand,tag=cpp_smoker] at @s run function cpp:furnace/smoker
execute as @e[type=minecraft:armor_stand,tag=cpp_blast_furnace] at @s run function cpp:furnace/blast_furnace
execute as @e[type=minecraft:armor_stand,tag=cpp_campfire] at @s run function cpp:campfire/campfire
# 酿造
execute as @e[type=minecraft:armor_stand,tag=cpp_brewing_stand] at @s run function cpp:brewing/tick
# 纸片人
execute as @e[type=minecraft:armor_stand,tag=cpp_character] at @s unless block ~ ~ ~ #minecraft:beds run function cpp:decor/character_break
# 便携式工作台
execute as @e[type=minecraft:armor_stand,tag=cpp_portable_crafting_table] at @s run function cpp:tool/portable_crafting_table_break
# 方块破坏器
execute if score $skyislandMode cppConfig matches 1 as @e[type=armor_stand,tag=cpp_block_breaker] at @s run function cpp:block_breaker/tick
execute if score $skyislandMode cppConfig matches 1 as @e[type=armor_stand,tag=cpp_fermenter] at @s run function cpp:fermenter/tick

# 附魔之瓶
execute as @e[type=minecraft:experience_bottle] at @s run function cpp:xp/throw

# 替换背包物
clear @a #cpp:clear{cppClear:1b}
execute as @a run function cpp:misc/player_bag
# 返回家
execute if score $skyislandMode cppConfig matches 1 as @p[gamemode=!creative,distance=..10] run function cpp:misc/home
# 体重
execute as @a at @s if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run function cpp:misc/fatness
# 连环
#execute as @a[scores={cppChainTick=1..}] at @s anchored eyes run function cpp:chain/type
# 插火把
#scoreboard players enable @a cppTorchPeriod
#execute as @a[scores={cppTorchPeriod=1..}] at @s run function cpp:auto_torch/check
# 下降
#execute as @a[scores={cppSneakTime=1..},nbt={ActiveEffects:[{Id:25b}]}] at @s run function cpp:tool/down
# 使用胡萝卜钓竿
execute as @a[scores={cppUseCSt=1..}] run function cpp:misc/use_cst
# 使用打火石
execute as @a[scores={cppUseFS=1..}] run function cpp:block/fire/reset
# 箱子整理
execute as @a[scores={cppTrimChest=1..}] run function cpp:trim/check
execute as @a[scores={cppTrimShulker=1..}] run function cpp:trim/check
# 背包整理
#scoreboard players enable @a cppTrim
#execute as @a[scores={cppTrim=1..}] run function cpp:trim/player

#execute if score $skyislandMode cppConfig matches 1 as @a[scores={cppBsdIntFur=1..}] at @a anchored eyes run function cpp:block_breaker/ray

#scoreboard players reset @a cppSneakTime

# 物品展示框边框
execute as @e[type=armor_stand,tag=cpp_item_frame] at @s unless entity @e[type=item_frame,distance=..0.5] run kill @s
# 物品展示框
execute as @e[type=item_frame] at @s run function cpp:item_frame/type

## 物品
#execute as @e[type=item,nbt={PickupDelay:0s}] at @s if entity @a[distance=..16,nbt={Inventory:[{tag:{id:"cpp:magnet"}}]}] run function cpp:item/magnet_check
#execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{display:{}}}}] at @s run function cpp:item/wand_of_the_darkness
execute as @e[type=item,tag=!cpp_item_checked] run function cpp:item/check

# 僵尸猪人-傀儡
execute as @e[type=zombie_pigman,tag=cpp_golem] at @s run function cpp:golem/tick

# 进度判断
advancement grant @a[scores={cppHealth=40..}] only cpp:fat
