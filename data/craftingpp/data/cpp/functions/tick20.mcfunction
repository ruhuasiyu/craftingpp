# 世界生成
execute if score $skyislandMode cppConfig matches 0 at @a[predicate=cpp:in_overworld] run function cpp:generate/check

effect give @a[scores={cppFat=100..}] slowness 8
effect give @a[scores={cppFat=200..}] slowness 8 1
effect give @a[scores={cppFat=..-100}] weakness 8 0
effect give @a[scores={cppFat=..-200}] weakness 8 1
execute as @a[nbt={Inventory:[{tag:{cppStoredEffects:[{}]}}]},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:rituals/effect/check
execute as @a[nbt={Inventory:[{Slot:100b,tag:{id:"cpp:snow_boots"}}]}] at @s run function cpp:decor/snow_boots
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]}] run function cpp:decor/effect_hat
execute as @a[scores={cppChainTick=1..}] run function cpp:chain/showtime

# 怪物加强
execute as @e[type=#cpp:enhance_mobs,tag=!cpp_enhance_mobs_checked] run function cpp:enhance_mobs/type
# 黑暗动物攻击
execute if score $doDarkAnimalSpawning cppConfig matches 1 as @e[type=#cpp:animals] run function cpp:dark_animals/type
# 流浪商人-交易
execute as @e[type=wandering_trader,tag=!cpp_trade_added] run function cpp:trade/check

# 成熟的树叶
execute store result score #rts cppValue run gamerule randomTickSpeed
execute store result score #rtsno cppValue if entity @e[type=armor_stand,tag=cpp_leaves_on_tree]
scoreboard players operation #rtsno cppValue *= #rts cppValue
scoreboard players operation #leaves_rts cppValue += #rtsno cppValue
execute if score #leaves_rts cppValue >= $modLeavesThreshold cppConfig as @e[type=armor_stand,tag=cpp_leaves_on_tree,sort=random,limit=1] at @s run function cpp:plants/leaves/type

# 物品展示框
execute as @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"cpp:magnet"}}}] at @s run function cpp:item_frame/magnet/tick
execute as @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"cpp:time_checker"}}}] at @s run function cpp:item_frame/time_checker/tick
execute as @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"cpp:muffler"}}}] at @s as @e[distance=..5] run data merge entity @s {Silent:1b}

execute as @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"cpp:break_hand"}}}] at @s unless entity @e[type=minecraft:armor_stand,distance=..0.01,tag=cpp_break_hand] run function cpp:item_frame/break_hand/init
execute as @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"cpp:smart_hand"}}}] at @s unless entity @e[type=minecraft:armor_stand,distance=..0.01,tag=cpp_smart_hand] run function cpp:item_frame/smart_hand/init
execute as @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"cpp:angry_hand"}}}] at @s unless entity @e[type=minecraft:armor_stand,distance=..0.01,tag=cpp_angry_hand] run function cpp:item_frame/angry_hand/init

# 手
execute as @e[type=item_frame,predicate=cpp:is_hand] at @s run function cpp:golem/hand/type
schedule function cpp:tick20 20t
