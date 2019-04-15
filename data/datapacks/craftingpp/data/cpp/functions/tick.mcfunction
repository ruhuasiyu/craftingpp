# 生成魔导石
execute unless score #load_sorcerer_stone cppValue matches 1 unless entity @e[tag=cpp_sorcerer_stone] if entity @a run function cpp:load_sorcerer_stone

# 关闭GUI
execute as @a[tag=cpp_close_gui] at @s positioned ~ ~-256 ~ run function cpp:close_gui_back

# 世界生成
execute as @a at @s run function cpp:generate/check

# 怪物加强
execute as @e[tag=!cpp_enhance_mobs_checked,type=#cpp:zombies] run function cpp:enhance_mobs/zombies
execute as @e[tag=!cpp_enhance_mobs_checked,type=#cpp:skeletons] run function cpp:enhance_mobs/skeletons
execute as @e[tag=!cpp_enhance_mobs_checked,type=wither_skeleton] run function cpp:enhance_mobs/wither_skeleton
execute as @e[tag=!cpp_enhance_mobs_checked,type=creeper] run function cpp:enhance_mobs/creeper
execute as @e[type=#cpp:zombies] at @s if block ~ ~ ~ #cpp:zombie_can_break run setblock ~ ~ ~ air destroy
execute as @e[type=#cpp:zombies] at @s if block ~ ~1 ~ #cpp:zombie_can_break run setblock ~ ~1 ~ air destroy
# 黑暗动物
execute as @e[tag=!cpp_dark_animal_checked,type=#cpp:animals] at @s run function cpp:dark_animals/check
execute as @e[tag=cpp_dark_animal,type=#cpp:animals] at @s if entity @a[distance=..16] run function cpp:dark_animals/attract
# 哞菇
execute as @e[type=item,nbt={Item:{tag:{id:"cpp:mycelium_marker"}}}] at @s run function cpp:block/mycelium

# 绿宝石吸引村民
tag @a remove cpp_player_hand_emerald_block
tag @a[nbt={SelectedItem:{id:"minecraft:emerald_block"}}] add cpp_player_hand_emerald_block
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:emerald_block"}]}] add cpp_player_hand_emerald_block
execute as @e[type=villager] at @s if entity @a[distance=1..10,tag=cpp_player_hand_emerald_block] run function cpp:villager/attract

# 鸡窝
execute as @e[tag=cpp_roost] at @s unless block ~ ~ ~ dead_fire_coral_fan run function cpp:block/break_roost
execute as @e[type=chicken,nbt={EggLayTime:100}] at @s run function cpp:roost/check

# 空岛树叶控制
execute if score #load_block_sky_domain cppValue matches -1..0 run kill @e[type=item,nbt={Item:{tag:{isSkyDrop:1b}}}]
execute if score #load_block_sky_domain cppValue matches 1..2 as @e[type=item,nbt={Item:{tag:{isSkyDrop:1b}}}] run data remove entity @s Item.tag

# 附魔之瓶
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:hopper"}]}] run function cpp:xp/check
execute as @a[scores={cppUseXpBottle=1..}] run function cpp:xp/use
# 标记手持压缩的附魔之瓶的玩家
tag @a remove cpp_has_compressed_xp
tag @a[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{compressedLevel:1s}}}] add cpp_has_compressed_xp
tag @a[nbt=!{SelectedItem:{id:"minecraft:experience_bottle"}},nbt={Inventory:[{id:"minecraft:experience_bottle",tag:{compressedLevel:1s},Slot:-106b}]}] add cpp_has_compressed_xp
# 普通附魔之瓶
execute as @e[type=experience_bottle] at @s run function cpp:xp/throw
## 等mojang把投掷物nbt错误的bug修复可重写

# 花草和树生长
execute as @e[type=armor_stand,tag=cpp_plants,tag=!cpp_acacia_sapling] at @s if block ~ ~ ~ acacia_sapling[stage=1] run function cpp:plants/grow
# 破坏树苗和花草
execute as @e[type=armor_stand,tag=cpp_plants] at @s unless block ~ ~ ~ acacia_sapling run function cpp:plants/break
# 破坏树叶
execute as @e[type=armor_stand,tag=cpp_leaves] at @s unless block ~ ~0.5 ~ acacia_leaves run function cpp:plants/break_leaves
# 生成彩色小羊
execute as @e[type=item,nbt={Item:{tag:{Tags:["cpp_generate_sheep"]}}}] at @s run function cpp:plants/sheep

# 营养均衡
execute as @a at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function cpp:foods/fatness/info

# 烧炼
execute as @e[type=armor_stand,tag=cpp_furnace] at @s unless block ~ ~ ~ furnace run kill @s
execute as @e[type=armor_stand,tag=cpp_smoker] at @s unless block ~ ~ ~ smoker run kill @s
execute as @e[type=armor_stand,tag=cpp_blast_furnace] at @s unless block ~ ~ ~ blast_furnace run kill @s

execute as @e[type=armor_stand,tag=cpp_furnace] at @s if block ~ ~ ~ furnace{CookTime:199s} run function cpp:furnace/type
execute as @e[type=armor_stand,tag=cpp_smoker] at @s if block ~ ~ ~ smoker{CookTime:99s} run function cpp:furnace/type
execute as @e[type=armor_stand,tag=cpp_blast_furnace] at @s if block ~ ~ ~ blast_furnace{CookTime:99s} run function cpp:furnace/type

execute as @e[type=armor_stand,tag=cpp_all_furnace] at @s unless data block ~ ~ ~ Items[{Slot:2b}].tag.display.Lore run function cpp:furnace/lore

execute as @e[type=armor_stand,tag=cpp_campfire] at @s unless block ~ ~ ~ campfire run kill @s
execute as @e[type=armor_stand,tag=cpp_campfire] at @s if block ~ ~ ~ campfire[lit=true]{Items:[{}]} run function cpp:campfire/check

# 显示饱食度
execute as @e[type=item,nbt={Item:{id:"minecraft:mushroom_stew"}}] unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:bread"}}] unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:cookie"}}] unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dried_kelp"}}] unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:pumpkin_pie"}}] unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_soup"}}] unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] unless data entity @s Item.tag.display.Lore run data merge entity @s {Item:{tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}}

# 酿造
execute as @e[type=armor_stand,tag=cpp_brewing_stand] at @s unless block ~ ~ ~ brewing_stand run kill @s
execute as @e[type=armor_stand,tag=cpp_brewing_stand] at @s if block ~ ~ ~ brewing_stand{BrewTime:1s} run function cpp:brewing_stand/type

# 黑暗魔杖
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b,tag:{display:{}}}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b,tag:{display:{}}}}] at @s if block ~ ~ ~ lava run data merge entity @s {Invulnerable:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,CustomModelData:12970065,display:{Name:"{\"translate\":\"item.cpp.wand_of_the_darkness\"}"},HideFlags:63,id:"cpp:wand_of_the_darkness"}}}

# 仪式
execute as @a[scores={cppInsDisp=1..}] run function cpp:rituals/init/check_wand
execute as @e[type=item_frame,tag=cpp_rituals_item] at @s run function cpp:rituals/rituals/type
advancement grant @a[scores={cppHealth=40..}] only cpp:fat

# 称号
scoreboard players enable @a title
execute as @a[scores={title=1..},nbt={SelectedItem:{id:"minecraft:emerald",Count:1b}}] run function cpp:decor/set_title

# 装饰
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]}] run function cpp:decor/hat
execute as @a[nbt={SelectedItem:{id:"minecraft:carved_pumpkin"}}] run function cpp:decor/hat1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carved_pumpkin"}]}] run function cpp:decor/hat2
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{CustomModelData:12971001}}]}] at @s positioned ~ 255 ~ run function cpp:decor/helmet

# 纸片人
execute as @e[tag=cpp_character] at @s unless block ~ ~ ~ #minecraft:beds run function cpp:decor/character_break

# 扫帚
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:broom"}}]}] run function cpp:decor/broom
execute as @a[nbt={SelectedItem:{tag:{id:"cpp:broom"}}}] run function cpp:decor/broom
# 流星丸
effect give @a[nbt={Inventory:[{Slot:102b,tag:{id:"cpp:shooting_star"}}]}] levitation 2 255 true
execute as @a[nbt={Inventory:[{Slot:102b,tag:{id:"cpp:shooting_star"}}]},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] at @s if block ^ ^ ^1 #cpp:air anchored eyes if block ^ ^ ^1 #cpp:air anchored feet run tp @s ^ ^ ^0.5
execute as @a[scores={cppMSneak=1..}] run function cpp:decor/sneakdown

# 使用胡萝卜钓竿(元素之力、机器、工具、傀儡)
execute as @a[scores={cppUseCSt=1..}] at @s run function cpp:use_carrot_on_a_stick/type
scoreboard players reset @a cppSneakTime

# 傀儡
execute as @e[type=zombie_pigman,tag=cpp_golem] at @s run function cpp:golem/action

# 机器
execute as @a[scores={cppOpenFrame=1..},nbt={SelectedItem:{tag:{MachinePlugin:1b}}}] at @s anchored eyes run function cpp:all_in_one_machine/ray
scoreboard players reset @a cppOpenFrame

execute as @e[type=armor_stand,tag=cpp_gold_block] at @s unless block ~ ~ ~ gold_block run function cpp:block/machine/break_gold_block
execute as @e[type=armor_stand,tag=cpp_barrel] at @s unless block ~ ~ ~ barrel run function cpp:block/machine/break_barrel
execute as @e[type=armor_stand,tag=cpp_chest] at @s unless block ~ ~ ~ chest run function cpp:block/machine/break_chest
execute as @e[type=armor_stand,tag=cpp_sorcerer_stone] at @s unless block ~ ~ ~ barrier run kill @s

execute as @e[type=armor_stand,tag=cpp_beacon_enhancer] at @s run function cpp:beacon_enhancer/tick
execute as @e[type=armor_stand,tag=cpp_all_in_one_machine] at @s run function cpp:all_in_one_machine/tick
execute as @e[type=armor_stand,tag=cpp_trade_machine] at @s run function cpp:trade_machine/tick
execute as @e[type=armor_stand,tag=cpp_mob_projector] at @s run function cpp:mob_projector/tick
execute as @e[type=armor_stand,tag=cpp_compress_craft_machine] at @s run function cpp:compress_craft_machine/tick
execute as @e[type=armor_stand,tag=cpp_golden_anvil] at @s if entity @a[distance=..6] run function cpp:golden_anvil/tick
execute as @e[type=armor_stand,tag=cpp_bookshelf] at @s if entity @a[distance=..6] run function cpp:bookshelf/tick
execute as @e[tag=cpp_crafting_machine] at @s if entity @a[distance=..6] run function cpp:craft/craft
execute at @e[tag=cpp_dustbin] run data remove block ~ ~ ~ Items

kill @e[type=item,nbt={Item:{tag:{isMachineBg:1b}}}]
clear @a firework_star{isMachineBg:1b}
execute as @e[type=hopper_minecart,nbt={Items:[{tag:{isMachineBg:1b}}]}] run data remove entity @s Items[{tag:{isMachineBg:1b}}]
execute at @e[tag=cpp_machine] run function cpp:block/machine/clear

# 磁铁
execute as @e[type=item,nbt={PickupDelay:0s}] at @s if entity @a[distance=..8,nbt={Inventory:[{tag:{id:"cpp:magnet",Type:0b}}]}] run function cpp:tool/magnet
execute as @e[type=item,nbt={PickupDelay:0s}] at @s if entity @a[distance=..16,nbt={Inventory:[{tag:{id:"cpp:magnet",Type:1b}}]}] run function cpp:tool/magnet_area

# 报时器
execute as @e[type=item_frame,nbt={Item:{tag:{id:"cpp:time_checker"}}}] run function cpp:tool/time_checker

# 压缩器
execute as @e[type=item,tag=!cpp_item_compressed,nbt={Item:{Count:1b}}] if data entity @s Item.tag.compressedLevel run function cpp:use_carrot_on_a_stick/tool/compressor/decompress

# 破坏之手
execute at @e[type=item_frame,nbt={Item:{tag:{id:"cpp:break_hand"}}}] run setblock ~ ~1 ~ air destroy

# 便携式工作台
execute at @e[tag=cpp_portable_crafting_table] unless block ~ ~ ~ crafting_table run kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table"}},sort=nearest,limit=1,distance=..2]
execute at @e[tag=cpp_portable_crafting_table] unless entity @a[distance=..6] run setblock ~ ~ ~ air
execute as @e[tag=cpp_portable_crafting_table] at @s unless block ~ ~ ~ crafting_table run kill @s
execute at @e[tag=cpp_portable_crafting_machine] unless entity @a[distance=..6] run setblock ~ ~ ~ air

# 彩色告示牌
execute as @e[tag=cpp_wall_sign] at @s unless block ~ ~ ~ #minecraft:wall_signs run function cpp:block/sign_break
execute as @e[tag=cpp_sign] at @s unless block ~ ~ ~ #minecraft:standing_signs run function cpp:block/sign_break

# 画/对联/旗帜
execute as @e[type=item_frame,tag=cpp_special_item_frame] unless data entity @s Item.id at @s run function cpp:decor/special_item_frame_break
execute as @e[type=item_frame,tag=cpp_special_item_frame,nbt={ItemRotation:1b}] run function cpp:decor/special_item_frame_rot
# 物品展示框
execute as @e[type=armor_stand,tag=cpp_item_frame] at @s unless entity @e[type=item_frame,distance=..0.5] run kill @s
execute as @e[type=item_frame,tag=!cpp_has_item] if data entity @s Item at @s run function cpp:decor/item_frame_glass1
execute as @e[type=item_frame,tag=!cpp_has_no_item] unless data entity @s Item at @s run function cpp:decor/item_frame_glass2

# 鞭炮
execute at @e[tag=cpp_firecrackers] run summon tnt ~ ~ ~ {Fuse:30s}
kill @e[tag=cpp_firecrackers]

# 生物头颅
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"},Age:0s}] run function cpp:heads

# 魔法
execute as @a[tag=cpp_has_wand_off,nbt={SelectedItem:{tag:{id:"cpp:sealing_wand"}}}] at @s run function cpp:magic/action
execute as @a[tag=cpp_has_wand_off,nbt={SelectedItem:{tag:{id:"cpp:star_wand"}}}] at @s run function cpp:magic/action
execute as @a[tag=cpp_has_wand_off,nbt={SelectedItem:{tag:{id:"cpp:dream_wand"}}}] at @s run function cpp:magic/action
tag @a[tag=cpp_has_wand_off] remove cpp_has_wand_off
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:sealing_wand"}}]}] run function cpp:magic/key
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:star_wand"}}]}] run function cpp:magic/key
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{id:"cpp:dream_wand"}}]}] run function cpp:magic/key

execute as @e[tag=cpp_bullet] at @s run function cpp:magic/bullet_tracking


# 连锁
execute as @a[scores={cppChainTick=1..}] at @s anchored eyes run function cpp:chain/type
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log"},Age:6s}] at @s if block ~ ~ ~ air run function cpp:chain/leaves_decay
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_log"},Age:6s}] at @s if block ~ ~ ~ air run function cpp:chain/leaves_decay
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_log"},Age:6s}] at @s if block ~ ~ ~ air run function cpp:chain/leaves_decay
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_log"},Age:6s}] at @s if block ~ ~ ~ air run function cpp:chain/leaves_decay
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_log"},Age:6s}] at @s if block ~ ~ ~ air run function cpp:chain/leaves_decay
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log"},Age:6s}] at @s if block ~ ~ ~ air run function cpp:chain/leaves_decay

# NoAi
execute as @e[scores={cppNoAITick=1}] run data merge entity @s {NoAI:0b}
execute as @e[scores={cppNoAITick=1..}] run scoreboard players remove @s cppNoAITick 1
