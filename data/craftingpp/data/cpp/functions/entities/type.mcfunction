# 僵尸猪人-傀儡
execute as @s[type=zombie_pigman,tag=cpp_golem] at @s run function cpp:golem/action
# 僵尸-破坏火把
execute as @s[type=#cpp:zombies] if score #improve_zombie cppValue matches 1 at @s run function cpp:enhance_mobs/zombie_break
# 动物-黑暗移动
execute as @s[type=#cpp:animals,tag=cpp_dark_animal] if score #generate_dark_animal cppValue matches 1 at @s if entity @a[distance=..16] run function cpp:dark_animals/attract
# 村民-被绿宝石吸引
execute as @s[type=#cpp:villagers] at @s if entity @a[distance=1..10,tag=cpp_player_hand_emerald_block] run function cpp:villager/attract
# 漏斗矿车-机器附近被清理
execute as @s[type=hopper_minecart,nbt={Items:[{tag:{isMachineBg:1b}}]}] run data remove entity @s Items[{tag:{isMachineBg:1b}}]
# 附魔之瓶-是否压缩过 等mojang把投掷物nbt错误的bug修复可重写
execute as @s[type=experience_bottle] at @s run function cpp:xp/throw
# 盔甲架
execute as @s[type=armor_stand] at @s run function cpp:entities/armor_stand
# 物品
execute as @s[type=item] at @s run function cpp:entities/item
# 物品展示框
execute as @s[type=item_frame] at @s run function cpp:entities/item_frame
# 药水云-树叶腐烂
execute as @s[type=area_effect_cloud,tag=cpp_leaves_decay,nbt={Age:6}] at @s run function cpp:chain/leaves_aec
# NoAi
execute as @s[scores={cppNoAITick=1..}] run function cpp:magic/noai
