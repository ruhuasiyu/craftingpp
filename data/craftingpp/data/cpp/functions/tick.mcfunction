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
execute as @e[type=armor_stand,tag=cpp_plants] at @s run function cpp:plants/tick
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

# 清理物品
clear @a #cpp:clear{cppClear:1b}
# 切换帽子模型
execute as @a[predicate=cpp:hat_mainhand] run function cpp:player/hat_mainhand
execute as @a[predicate=cpp:hat_offhand] run function cpp:player/hat_offhand
execute as @a[predicate=cpp:hat_head] run function cpp:player/hat_head
# 扫帚
execute as @a[predicate=cpp:broom_hand] run function cpp:player/broom_hand
# 流星丸
execute as @a[predicate=cpp:shooting_star_mainhand] run function cpp:player/shooting_star_mainhand
execute as @a[predicate=cpp:shooting_star_offhand] run function cpp:player/shooting_star_offhand
# 称号
execute as @a[predicate=cpp:mainhand_emerald] run function cpp:decor/mainhand_emerald
# 随机方块# check 
execute as @a[predicate=cpp:offhand_shulker_box] if data entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[0] run function cpp:item/random_block/run
# 替换合成器
execute as @a[predicate=cpp:mainhand_petrified_oak_slab] unless data entity @s SelectedItem.tag.CustomModelData run function cpp:crafting_machine/replace/main
execute as @s[predicate=cpp:offhand_petrified_oak_slab] unless data entity @s Inventory[{Slot:-106b}].tag.CustomModelData run function cpp:crafting_machine/replace/off
# 烈焰红唇
execute as @s[predicate=cpp:head_red_lip] run function cpp:decor/head_red_lip
data modify storage cpp:playerbag Items set from entity @s Inventory
data remove storage cpp:playerbag Items[{Slot:103b}]
execute if data storage cpp:playerbag Items[{id:"minecraft:firework_star",tag:{id:"cpp:red_lip"}}] run function cpp:decor/bag_red_lip
# 帽子
advancement grant @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:green_hat"}}]}] only cpp:forgive
advancement grant @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:cat_breed"}}]}] only cpp:meow
# 紫色美瞳
effect give @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:glow_hat"}}]}] glowing 5
execute as @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:glass_helmet"}}]}] at @s anchored eyes unless block ~ ~ ~ water run effect give @s water_breathing 5
execute as @s[nbt={Inventory:[{Slot:103b,tag:{id:"cpp:purple_eye"}}]}] at @s run effect give @e[tag=cpp_wild_grass,distance=..100] glowing 5
# 附魔之瓶
execute as @s[predicate=cpp:offhand_hopper] run function cpp:xp/check



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
execute as @a[scores={cppSneakTime=1..},nbt={ActiveEffects:[{Id:25b}]}] at @s run function cpp:player/shift
# 使用胡萝卜钓竿
execute as @a[scores={cppUseCSt=1..}] run function cpp:cst/type
# 使用打火石
execute as @a[scores={cppUseFS=1..}] run function cpp:block/reset/fire
# 箱子整理
execute as @a[scores={cppTrimChest=1..}] run function cpp:trim/check
execute as @a[scores={cppTrimShulker=1..}] run function cpp:trim/check
# 背包整理
#scoreboard players enable @a cppTrim
#execute as @a[scores={cppTrim=1..}] run function cpp:trim/player

execute if score $skyislandMode cppConfig matches 1 as @a[scores={cppBsdIntFur=1..}] at @a anchored eyes run function cpp:block_breaker/ray

scoreboard players reset @a cppSneakTime

# 物品展示框边框
execute as @e[type=armor_stand,tag=cpp_item_frame] at @s unless entity @e[type=item_frame,distance=..0.5] run kill @s
# 物品展示框
execute as @e[type=item_frame] at @s run function cpp:item_frame/type

## 物品
execute as @e[type=item,nbt={PickupDelay:0s}] at @s if entity @a[distance=..16,predicate=cpp:has_magnet] run function cpp:item/magnet
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{display:{}}}}] at @s run function cpp:item/wand_of_the_darkness
execute as @e[type=item,tag=!cpp_item_checked] run function cpp:item/check

# 僵尸猪人-傀儡
execute as @e[type=zombified_piglin,tag=cpp_golem] at @s run function cpp:golem/tick

# 进度判断
advancement grant @a[scores={cppHealth=40..}] only cpp:fat
