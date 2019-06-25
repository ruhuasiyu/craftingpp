kill @e[tag=cpp_chunk]
execute at @e[tag=cpp_roost] run setblock ~ ~ ~ air
kill @e[tag=cpp_roost]

# 玩家
execute as @a run function cpp:entities/player20
# 怪物-加强
execute as @e[type=#cpp:enhance_mobs,tag=!cpp_enhance_mobs_checked] run function cpp:enhance_mobs/type
# 动物-黑暗判定与攻击
execute if score #generate_dark_animal cppValue matches 1 as @e[type=#cpp:animals] run function cpp:dark_animals/type
# 流浪商人-交易
execute as @e[type=wandering_trader,tag=!cpp_trade_added] run function cpp:trade/check
# 成熟的树叶
execute store result score #rts cppValue run gamerule randomTickSpeed
execute as @e[type=armor_stand,tag=cpp_leaves_on_tree] run scoreboard players operation #leaves_rts cppValue += #rts cppValue
execute if score #leaves_rts cppValue >= #leaves_grow_threshold cppValue as @e[type=armor_stand,tag=cpp_leaves_on_tree,sort=random,limit=1] at @s run function cpp:plants/event/type
# 信标增强仪
execute as @e[type=armor_stand,tag=cpp_beacon_enhancer] at @s run function cpp:check_power
execute as @e[type=armor_stand,tag=cpp_beacon_enhancer,tag=!cpp_redstone_powered] at @s if block ~ ~-1 ~ beacon run function cpp:beacon_enhancer/level
# 垃圾桶
execute as @e[type=armor_stand,tag=cpp_dustbin] at @s run function cpp:check_power
execute as @e[type=armor_stand,tag=cpp_dustbin,tag=!cpp_redstone_powered] at @s run data remove block ~ ~ ~ Items

schedule function cpp:tick20 20t
