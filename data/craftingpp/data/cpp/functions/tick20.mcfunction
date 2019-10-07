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
# 垃圾桶
execute as @e[type=minecraft:armor_stand,tag=cpp_dustbin] at @s run function cpp:dustbin/tick20

schedule function cpp:tick20 20t
