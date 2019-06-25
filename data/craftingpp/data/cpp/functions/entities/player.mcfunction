# 进度处理
advancement grant @s[scores={cppHealth=40..}] only cpp:fat

# 标签处理
tag @s remove cpp_player_hand_emerald_block
tag @s[nbt={SelectedItem:{id:"minecraft:emerald_block"}}] add cpp_player_hand_emerald_block
tag @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:emerald_block"}]}] add cpp_player_hand_emerald_block

# 方块处理
# 世界生成
execute as @s positioned as @s if entity @s[distance=..1] run function cpp:generate/check
# 营养均衡
execute as @s at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function cpp:foods/fatness/info
# 关闭GUI
execute as @s[tag=cpp_close_gui] at @s positioned ~ ~-256 ~ run function cpp:close_gui_back
# 连锁
execute as @s[scores={cppChainTick=1..}] at @s anchored eyes run function cpp:chain/type
# 自动火把
scoreboard players enable @s cppTorchPeriod
execute as @s[scores={cppTorchPeriod=1..}] run function cpp:auto_torch/check
# 随机方块
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shulker_box"}]}] unless data entity @s SelectedItem if data entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items[] run function cpp:random_block/run
# 物品处理
clear @s firework_star{isMachineBg:1b}

# 记分板与nbt处理
# 称号
execute as @s[nbt={SelectedItem:{id:"minecraft:emerald",Count:1b}}] run function cpp:decor/set_title
# 附魔之瓶
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:hopper"}]}] run function cpp:xp/check
execute as @s[scores={cppUseXpBottle=1..}] run function cpp:xp/use
tag @s remove cpp_has_compressed_xp
tag @s[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{compressedLevel:1s}}}] add cpp_has_compressed_xp
tag @s[nbt=!{SelectedItem:{id:"minecraft:experience_bottle"}},nbt={Inventory:[{Slot:-106b,id:"minecraft:experience_bottle",tag:{compressedLevel:1s}}]}] add cpp_has_compressed_xp
# 头部装饰
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin",Count:1b}]},nbt=!{Inventory:[{Slot:103b,tag:{hat_checked:1b}}]}] run function cpp:decor/hat
execute as @s[nbt={SelectedItem:{id:"minecraft:carved_pumpkin",tag:{hat_checked:1b}}}] run function cpp:decor/hat1
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carved_pumpkin",tag:{hat_checked:1b}}]}] run function cpp:decor/hat2
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{CustomModelData:12971001}}]}] positioned ~ 255 ~ run function cpp:decor/lip
# 扫帚
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:broom"}}]}] run function cpp:decor/broom
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:broom"}}}] run function cpp:decor/broom
# 流星丸
effect give @s[nbt={Inventory:[{Slot:102b,tag:{id:"cpp:shooting_star"}}]}] levitation 2 255 true
execute as @s[nbt={Inventory:[{Slot:102b,tag:{id:"cpp:shooting_star"}}]},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] at @s if block ^ ^ ^1 #cpp:air anchored eyes if block ^ ^ ^1 #cpp:air anchored feet run tp @s ^ ^ ^0.5
# shift下降
execute as @s[scores={cppSneakTime=1..},nbt={ActiveEffects:[{Id:25b}]}] at @s if block ~ ~-0.3 ~ #cpp:fluid run tp @s ~ ~-0.3 ~
# 使用胡萝卜钓竿(元素之力、机器、工具、傀儡)
execute as @s[scores={cppUseCSt=1..}] at @s run function cpp:use_carrot_on_a_stick/type
# 机器插件
execute as @s[scores={cppOpenFrame=1..},nbt={SelectedItem:{tag:{MachinePlugin:1b}}}] at @s anchored eyes run function cpp:all_in_one_machine/ray
# 箱子整理
execute as @s[scores={cppSortOpenC=1..}] run function cpp:sort_chest/check
execute as @s[scores={cppSortOpenS=1..}] run function cpp:sort_chest/check
scoreboard players enable @s cppTrim
execute as @s[scores={cppTrim=1..}] run function cpp:sort_chest/player

# 魔法
execute as @s[tag=cpp_has_wand_off] run function cpp:magic/preaction
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:sealing_wand"}}]}] run function cpp:magic/key
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:star_wand"}}]}] run function cpp:magic/key
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:dream_wand"}}]}] run function cpp:magic/key

# 重置
scoreboard players reset @s cppSneakTime
scoreboard players reset @s cppOpenFrame
