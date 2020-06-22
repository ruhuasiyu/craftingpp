# 世界生成
execute if score $skyislandMode cppConfig matches 0 as @a[predicate=cpp:in_overworld] at @s run function cpp:generate/check
execute as @a[predicate=cpp:in_the_nether] at @s run function cpp:generate/check
execute as @a[predicate=cpp:in_flower] at @s run function cpp:generate/check
# 传送门
execute as @a at @s[predicate=cpp:in_overworld,predicate=cpp:flower_portal_done] run function cpp:misc/to_flower
execute as @a at @s[predicate=cpp:in_flower,predicate=cpp:flower_portal_done] run function cpp:misc/to_overworld
# 体重
execute as @a at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function cpp:misc/fatness
effect give @a[scores={cppFat=100..}] slowness 8
effect give @a[scores={cppFat=200..}] slowness 8 1
effect give @a[scores={cppFat=..-100}] weakness 8
effect give @a[scores={cppFat=..-200}] weakness 8 1
# 装备效果
execute as @a[predicate=cpp:inventory/stored_effects,predicate=!cpp:inventory/temperancer] run function cpp:rituals/effect/check
# 服饰
advancement grant @a[scores={cppHealth=40..}] only cpp:fat
advancement grant @s[predicate=cpp:head/green_hat] only cpp:forgive
advancement grant @a[predicate=cpp:head/cat_breed] only cpp:meow
effect give @a[predicate=cpp:head/glow_hat] glowing 5
execute as @a[predicate=cpp:head/glass_helmet] at @s anchored eyes unless block ~ ~ ~ water run effect give @s water_breathing 5
execute as @a[predicate=cpp:head/purple_eye,predicate=cpp:in_flower] at @s run effect give @e[type=armor_stand,tag=cpp_wild_grass,distance=..100] glowing 5
execute as @a[predicate=cpp:feet/snow_boots] at @s if block ~ ~-0.1 ~ #cpp:snows run effect give @s speed 2
# 连锁时间
execute as @a[scores={cppChainTick=1..}] run function cpp:chain/showtime
# 称号
execute as @a[predicate=cpp:mainhand/emerald] run function cpp:decor/mainhand_emerald
# 返回家
execute if score $skyislandMode cppConfig matches 1 run function cpp:misc/skyisland

# 怪物加强
execute as @e[type=#cpp:enhance_mobs,tag=!cpp_enhance_mobs_checked] run function cpp:enhance_mobs/type
# 黑暗动物攻击
execute if score $doDarkAnimalSpawning cppConfig matches 1 as @e[type=#cpp:animals] run function cpp:dark_animals/type
# 流浪商人-交易
execute as @e[type=wandering_trader,tag=!cpp_trade_added] run function cpp:trade/check
# 村民-交易
execute as @e[type=villager,tag=!cpp_villager_modified,predicate=cpp:villager/butcher] run function cpp:villager/rabbit_stew
execute as @e[type=villager,tag=!cpp_villager_modified,predicate=cpp:villager/farmer] run function cpp:villager/apple
tag @e[type=villager,tag=cpp_villager_modified,predicate=cpp:villager/none] remove cpp_villager_modified

# 成熟的树叶
execute store result score #rts cppValue run gamerule randomTickSpeed
execute store result score #rtsno cppValue if entity @e[type=armor_stand,tag=cpp_leaves_on_tree]
scoreboard players operation #rtsno cppValue *= #rts cppValue
scoreboard players operation #leaves_rts cppValue += #rtsno cppValue
execute if score #leaves_rts cppValue >= $modLeavesThreshold cppConfig as @e[type=armor_stand,tag=cpp_leaves_on_tree,sort=random,limit=1] at @s run function cpp:plants/leaves/type

# 物品展示框
execute as @e[type=item_frame,predicate=cpp:item/magnet] at @s run function cpp:item_frame/magnet/tick
execute as @e[type=item_frame,predicate=cpp:item/time_checker] at @s run function cpp:item_frame/time_checker/tick
execute at @e[type=item_frame,predicate=cpp:item/muffler] as @e[distance=..5] run data merge entity @s {Silent:1b}

# 告示牌
execute as @e[type=item,predicate=cpp:item/sign_dye] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #signs run function cpp:item/dye_sign/check

execute as @e[type=area_effect_cloud,tag=cpp_dragon_egg] at @s if block ~1 ~-3 ~ end_portal run function cpp:adv/kill_dragon_done

schedule function cpp:tick20 20t
