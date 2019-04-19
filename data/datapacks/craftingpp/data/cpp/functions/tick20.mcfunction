# 黑暗生物攻击
execute as @e[tag=cpp_dark_animal] at @s if entity @a[distance=..1] run function cpp:dark_animals/attack

# 成熟的树叶
execute store result score #rts cppValue run gamerule randomTickSpeed
execute as @e[type=armor_stand,tag=cpp_leaves_on_tree] run scoreboard players operation #leaves_rts cppValue += #rts cppValue
execute if score #leaves_rts cppValue >= #leaves_grow_threshold cppValue as @e[type=armor_stand,tag=cpp_leaves_on_tree,sort=random,limit=1] at @s run function cpp:plants/event/type

# 营养均衡
# 甜菜汤-6 苹果/金苹果/附魔金苹果/胡萝卜/金胡萝卜-4 西瓜/紫颂果/蘑菇煲-2 马铃薯/烤马铃薯/甜菜根-1
# 曲奇/生鱼/熟鱼/腐肉+1 生鸡肉/生兔肉+2 生牛肉/生猪排/生羊肉+3 熟鸡肉/兔肉+6 熟羊肉/牛排/熟猪排+8
effect give @a[scores={cppFat=100..}] slowness 8
effect give @a[scores={cppFat=200..}] slowness 8 1
effect give @a[scores={cppFat=..-100}] weakness 8 0
effect give @a[scores={cppFat=..-200}] weakness 8 1

# 装备效果
execute as @a[nbt={Inventory:[{tag:{triggerEffect:[{}]}}]},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:rituals/effect/check

# 装饰
execute as @a[nbt={Inventory:[{Slot:100b,tag:{id:"cpp:snow_boots"}}]}] at @s run function cpp:decor/snow_boots
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]}] at @s run function cpp:decor/effect_hat

# 恢复魔力值
scoreboard players add @a cppMana 0
execute at @e[tag=cpp_sorcerer_stone] as @a[distance=..32,scores={cppMana=..29}] run scoreboard players add @s cppMana 1
# 信标增强仪
execute as @e[tag=cpp_beacon_enhancer] at @s run function cpp:check_power
execute as @e[tag=cpp_beacon_enhancer,tag=!cpp_redstone_powered] at @s if block ~ ~-1 ~ beacon run function cpp:beacon_enhancer/level

execute as @e[tag=cpp_dustbin] at @s run function cpp:check_power
execute as @e[tag=cpp_dustbin,tag=!cpp_redstone_powered] at @s run data remove block ~ ~ ~ Items

execute as @a[tag=cpp_has_wand_off] at @s positioned ~ -1 ~ run function cpp:magic/show_title

# 连锁
execute as @a[scores={cppChainTick=1..}] at @s positioned ~ 300 ~ run function cpp:chain/showtime

schedule function cpp:tick20 20t
