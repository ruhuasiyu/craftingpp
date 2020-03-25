# 僵尸-破坏火把
execute if score $doZombieImproving cppConfig matches 1 as @e[type=#cpp:zombies] at @s run function cpp:enhance_mobs/zombie_break

# 动物-黑暗移动
execute if score $doDarkAnimalSpawning cppConfig matches 1 as @e[type=#cpp:animals,tag=cpp_dark_animal] at @s if entity @a[distance=..16] run function cpp:dark_animals/attract

# 村民-被绿宝石吸引
execute as @e[type=#cpp:villagers] at @s if entity @a[distance=1..10,predicate=cpp:hand/emerald_block] run function cpp:misc/attract_villager

# 盔甲架
# 机器
execute as @e[type=armor_stand,tag=cpp_machine] at @s run function cpp:block/machine
# 日石月石-破坏
execute as @e[type=armor_stand,tag=cpp_gold_block] at @s unless block ~ ~ ~ gold_block run function cpp:block/break/gold_block
# 树叶-破坏
execute as @e[type=armor_stand,tag=cpp_leaves] at @s unless block ~ ~ ~ acacia_leaves run function cpp:block/break/acacia_leaves
# 花草树苗
execute as @e[type=armor_stand,tag=cpp_plants] at @s run function cpp:plants/tick
# 告示牌-破坏
execute as @e[type=armor_stand,tag=cpp_sign] at @s unless block ~ ~ ~ #cpp:oak_signs run function cpp:block/break/oak_sign
# 烧炼
execute as @e[type=armor_stand,tag=cpp_furnace] at @s run function cpp:furnace/tick
execute as @e[type=armor_stand,tag=cpp_smoker] at @s run function cpp:smoker/tick
execute as @e[type=armor_stand,tag=cpp_blast_furnace] at @s run function cpp:blast_furnace/tick
execute as @e[type=armor_stand,tag=cpp_campfire] at @s run function cpp:campfire/campfire
# 纸片人-破坏
execute as @e[type=armor_stand,tag=cpp_character] at @s unless block ~ ~ ~ #minecraft:beds run function cpp:decor/character_break
# 便携式工作台-破坏
execute as @e[type=armor_stand,tag=cpp_portable_crafting_table] at @s run function cpp:tool/portable_crafting_table_break
# 方块破坏器
execute if score $skyislandMode cppConfig matches 1 as @e[type=armor_stand,tag=cpp_block_breaker] at @s run function cpp:block_breaker/tick
execute if score $skyislandMode cppConfig matches 1 as @e[type=armor_stand,tag=cpp_fermenter] at @s run function cpp:fermenter/tick

# 附魔之瓶
execute as @e[type=experience_bottle] at @s run function cpp:xp/throw

# 清理物品
clear @a[predicate=cpp:inventory/cpp_clear] #cpp:clear{cppClear:1b}
# 扫帚
execute as @a[predicate=cpp:hand/broom] run function cpp:tool/broom
# 流星丸
execute as @a[predicate=cpp:offhand/shooting_star] at @s if block ^ ^ ^1 #cpp:fluid run function cpp:tool/shooting_star
effect give @a[predicate=cpp:hand/shooting_star] levitation 2 255 true
# 称号
execute as @a[predicate=cpp:mainhand/emerald] run function cpp:decor/mainhand_emerald
# 随机方块
execute as @a[predicate=cpp:offhand/shulker_box] if data entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[0] run function cpp:item/random_block/run
# 背包物品处理
execute as @a[predicate=cpp:mainhand/petrified_oak_slab] unless data entity @s SelectedItem.tag.CustomModelData run function cpp:crafting_machine/replace/main
execute as @a[predicate=cpp:offhand/petrified_oak_slab] unless data entity @s Inventory[{Slot:-106b}].tag.CustomModelData run function cpp:crafting_machine/replace/off
execute as @a[predicate=cpp:mainhand/hat] run function cpp:player/hat_mainhand
execute as @a[predicate=cpp:offhand/hat] run function cpp:player/hat_offhand
execute as @a[predicate=cpp:head/hat] run function cpp:player/hat_head
execute as @a[predicate=cpp:head/red_lip] run function cpp:player/red_lip
execute as @a[predicate=cpp:inventory/red_lip] run function cpp:player/bag_red_lip
execute as @a[predicate=cpp:inventory/frostmourne] run function cpp:player/bag_frostmourne
execute as @a[predicate=cpp:inventory/ganjiang_moye_sword] run function cpp:player/bag_ganjiang_moye_sword
execute as @a[predicate=cpp:inventory/imperial_sword] run function cpp:player/bag_imperial_sword
execute as @a[predicate=cpp:inventory/phoenix_sword] run function cpp:player/bag_phoenix_sword
# 帽子
advancement grant @a[predicate=cpp:head/cat_breed] only cpp:meow
execute as @a[predicate=cpp:head/purple_eye] at @s run effect give @e[tag=cpp_wild_grass,distance=..100] glowing 5
# 附魔之瓶
execute as @a[predicate=cpp:offhand/hopper] run function cpp:xp/check
# 返回家
execute if score $skyislandMode cppConfig matches 1 as @p[gamemode=!creative,distance=..10] run function cpp:misc/home
execute if score $skyislandMode cppConfig matches 1 run scoreboard players enable @a cppHome
execute as @a[scores={cppHome=1..}] run function cpp:misc/sethome
# 体重
execute as @a at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function cpp:misc/fatness
# 进度判断
advancement grant @a[scores={cppHealth=40..}] only cpp:fat
# 连环
execute as @a[scores={cppChainTick=1..}] at @s anchored eyes run function cpp:chain/type
# 插火把
scoreboard players enable @a cppTorchPeriod
execute as @a[scores={cppTorchPeriod=1..}] at @s run function cpp:auto_torch/check
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
scoreboard players enable @a cppTrim
execute as @a[scores={cppTrim=1..}] run function cpp:trim/player
# 方块破坏器-互动
execute if score $skyislandMode cppConfig matches 1 as @a[scores={cppBsdIntFur=1..}] at @a anchored eyes run function cpp:block_breaker/ray
scoreboard players reset @a cppSneakTime
# 使用骨粉
execute if score $skyislandMode cppConfig matches 1 as @a[scores={cppUseBM=1..}] at @a anchored eyes run function cpp:bone_meal/reset

# 物品展示框
execute as @e[type=item_frame] at @s run function cpp:item_frame/type

## 物品
execute as @e[type=item,nbt={PickupDelay:0s}] at @s if entity @a[distance=..16,predicate=cpp:inventory/magnet] run function cpp:item/magnet
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{display:{}}}}] at @s run function cpp:item/wand_of_the_darkness
execute as @e[type=item,tag=!cpp_item_checked] run function cpp:item/check

# 傀儡
execute as @e[type=armor_stand,tag=cpp_golem_farmer] at @s run function cpp:golem/farmer
execute as @e[type=armor_stand,tag=cpp_golem_miner] at @s run function cpp:golem/miner
execute as @e[type=armor_stand,tag=cpp_golem_fisher] at @s run function cpp:golem/fisher
execute as @e[type=armor_stand,tag=cpp_golem_warrior] at @s run function cpp:golem/warrior
execute as @e[type=armor_stand,tag=cpp_golem_herder] at @s run function cpp:golem/herder
