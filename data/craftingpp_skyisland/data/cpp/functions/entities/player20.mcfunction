# 营养均衡
effect give @s[scores={cppFat=100..}] slowness 8
effect give @s[scores={cppFat=200..}] slowness 8 1
effect give @s[scores={cppFat=..-100}] weakness 8 0
effect give @s[scores={cppFat=..-200}] weakness 8 1
# 装备效果
execute as @s[nbt={Inventory:[{tag:{triggerEffect:[{}]}}]},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:rituals/effect/check
# 装饰
execute as @s[nbt={Inventory:[{Slot:100b,tag:{id:"cpp:snow_boots"}}]}] at @s run function cpp:decor/snow_boots
execute as @s[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]}] run function cpp:decor/effect_hat
# 恢复魔力值
execute at @a[scores={cppMana=..29}] if entity @e[type=armor_stand,tag=cpp_sorcerer_stone,distance=..32] run scoreboard players add @s cppMana 1
# 魔法显示
execute as @a[tag=cpp_has_wand_off] at @s positioned ~ -1 ~ run function cpp:magic/show_title
# 连锁
execute as @a[scores={cppChainTick=1..}] at @s positioned ~ 300 ~ run function cpp:chain/showtime
