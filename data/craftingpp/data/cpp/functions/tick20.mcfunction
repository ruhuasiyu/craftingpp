effect give @a[scores={cppFat=100..}] slowness 8
effect give @a[scores={cppFat=200..}] slowness 8 1
effect give @a[scores={cppFat=..-100}] weakness 8 0
effect give @a[scores={cppFat=..-200}] weakness 8 1
execute as @a[nbt={Inventory:[{tag:{triggerEffect:[{}]}}]},nbt=!{Inventory:[{tag:{id:"cpp:temperancer"}}]}] run function cpp:rituals/effect/check
execute as @a[nbt={Inventory:[{Slot:100b,tag:{id:"cpp:snow_boots"}}]}] at @s run function cpp:decor/snow_boots
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:jack_o_lantern"}]}] run function cpp:decor/effect_hat
execute as @a[scores={cppChainTick=1..}] run function cpp:chain/showtime

# 垃圾桶
execute as @e[type=armor_stand,tag=cpp_dustbin] at @s run function cpp:dustbin/tick20

# 怪物加强
execute as @e[type=#cpp:enhance_mobs,tag=!cpp_enhance_mobs_checked] run function cpp:enhance_mobs/type
# 黑暗动物攻击
execute if score #doDarkAnimalSpawning cppValue matches 1 as @e[type=#cpp:animals] run function cpp:dark_animals/type
# 流浪商人-交易
execute as @e[type=wandering_trader,tag=!cpp_trade_added] run function cpp:trade/check

# 成熟的树叶
execute store result score #rts cppValue run gamerule randomTickSpeed
execute store result score #rtsno cppValue if entity @e[type=armor_stand,tag=cpp_leaves_on_tree]
scoreboard players operation #rtsno cppValue *= #rts cppValue
scoreboard players operation #leaves_rts cppValue += #rtsno cppValue
execute if score #leaves_rts cppValue >= #modLeavesThreshold cppValue as @e[type=armor_stand,tag=cpp_leaves_on_tree,sort=random,limit=1] at @s run function cpp:plants/leaves/type

schedule function cpp:tick20 20t
