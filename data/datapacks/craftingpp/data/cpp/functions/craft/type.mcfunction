execute store result score @s cppValue run data get block ~ ~ ~ Items
function #cpp:craft
# 全部格子
execute as @s[scores={cppValue=26}] run function cpp:craft/shape_all
# 十字形
execute as @s[scores={cppValue=22}] if block ~ ~ ~ barrel{Items:[{Slot:2b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:20b}]} run function cpp:craft/shape_cross

# 无序合成
execute as @s[scores={cppValue=22}] run function cpp:craft/shapeless5
execute as @s[scores={cppValue=21}] run function cpp:craft/shapeless4
execute as @s[scores={cppValue=20}] run function cpp:craft/shapeless3
execute as @s[scores={cppValue=19}] run function cpp:craft/shapeless2
execute as @s[scores={cppValue=18}] run function cpp:craft/shapeless1

# 书架
execute as @s[scores={cppValue=21}] if block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{id:"cpp:empty_bookshelf"}},{Slot:10b,id:"minecraft:book"},{Slot:11b,id:"minecraft:book"},{Slot:12b,id:"minecraft:book"}]} run replaceitem block ~ ~ ~ container.16 bookshelf
# 剪枝器
execute as @s[scores={cppValue=20}] if block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{id:"cpp:enchanted_iron"}},{Slot:11b,id:"minecraft:stick"},{Slot:19b,id:"minecraft:stick"}]} run loot replace block ~ ~ ~ container.16 loot cpp:grafter
# 热带鱼桶
execute as @s[scores={cppValue=22}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:tropical_fish_bucket"},{Slot:2b},{Slot:3b},{Slot:10b},{Slot:11b}]} run function cpp:craft/fish/type
# 玻璃镐
execute as @s[scores={cppValue=22}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:glass"},{Slot:3b,id:"minecraft:glass"},{Slot:11b,id:"minecraft:stick"},{Slot:20b,id:"minecraft:stick"}]} run loot replace block ~ ~ ~ container.16 loot cpp:glass_pickaxe
# 粘土桶
execute as @s[scores={cppValue=20}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:clay_ball"},{Slot:3b,id:"minecraft:clay_ball"},{Slot:11b,id:"minecraft:clay_ball"}]} run loot replace block ~ ~ ~ container.16 loot cpp:clay_bucket
execute as @s[scores={cppValue=20}] if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:clay_ball"},{Slot:12b,id:"minecraft:clay_ball"},{Slot:20b,id:"minecraft:clay_ball"}]} run loot replace block ~ ~ ~ container.16 loot cpp:clay_bucket
# 扫帚
execute as @s[scores={cppValue=22}] if block ~ ~ ~ barrel{Items:[{Slot:2b,id:"minecraft:stick"},{Slot:11b,id:"minecraft:stick"},{Slot:19b,id:"minecraft:firework_rocket"},{Slot:20b,id:"minecraft:hay_block"},{Slot:21b,id:"minecraft:firework_rocket"}]} run loot replace block ~ ~ ~ container.16 loot cpp:broom
# 鸡窝
execute as @s[scores={cppValue=22}] if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:wheat"},{Slot:20b,id:"minecraft:wheat"},{Slot:12b,id:"minecraft:wheat"},{Slot:19b,id:"minecraft:wheat"},{Slot:21b,id:"minecraft:wheat"}]} run loot replace block ~ ~ ~ container.16 loot cpp:roost
# 帽子
execute as @s[scores={cppValue=22}] if block ~ ~ ~ barrel{Items:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:10b},{Slot:12b}]} run function cpp:craft/hat1
execute as @s[scores={cppValue=22}] if block ~ ~ ~ barrel{Items:[{Slot:10b},{Slot:11b},{Slot:12b},{Slot:19b},{Slot:21b}]} run function cpp:craft/hat2
# 外套
execute as @s[scores={cppValue=25}] if block ~ ~ ~ barrel{Items:[{Slot:1b},{Slot:3b},{Slot:10b,id:"minecraft:leather"},{Slot:11b,id:"minecraft:leather"},{Slot:12b,id:"minecraft:leather"},{Slot:19b,id:"minecraft:leather"},{Slot:20b,id:"minecraft:leather"},{Slot:21b,id:"minecraft:leather"}]} run function cpp:craft/coat
# 裤子
execute as @s[scores={cppValue=24}] if block ~ ~ ~ barrel{Items:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:10b,id:"minecraft:leather"},{Slot:12b,id:"minecraft:leather"},{Slot:19b},{Slot:21b}]} run function cpp:craft/pants
# 鞋
execute as @s[scores={cppValue=21}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather"},{Slot:3b,id:"minecraft:leather"},{Slot:10b,id:"minecraft:brown_dye"},{Slot:12b,id:"minecraft:brown_dye"}]} run loot replace block ~ ~ ~ container.16 loot cpp:snow_boots
execute as @s[scores={cppValue=21}] if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:leather"},{Slot:12b,id:"minecraft:leather"},{Slot:19b,id:"minecraft:brown_dye"},{Slot:21b,id:"minecraft:brown_dye"}]} run loot replace block ~ ~ ~ container.16 loot cpp:snow_boots
# 搬箱器
execute as @s[scores={cppValue=23}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:stick"},{Slot:3b,id:"minecraft:stick"},{Slot:10b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:stick"},{Slot:11b,tag:{id:"cpp:enchanted_iron"}},{Slot:20b,tag:{id:"cpp:enchanted_iron"}}]} run loot replace block ~ ~ ~ container.16 loot cpp:chest_transporter

# 皮革盔甲染色
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_helmet"},{Slot:2b,id:"minecraft:black_dye"}]} run function cpp:craft/leather_armor/black
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_helmet"},{Slot:2b,id:"minecraft:red_dye"}]} run function cpp:craft/leather_armor/red
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_helmet"},{Slot:2b,id:"minecraft:green_dye"}]} run function cpp:craft/leather_armor/green
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_helmet"},{Slot:2b,id:"minecraft:blue_dye"}]} run function cpp:craft/leather_armor/blue

execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_chestplate"},{Slot:2b,id:"minecraft:black_dye"}]} run function cpp:craft/leather_armor/black
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_chestplate"},{Slot:2b,id:"minecraft:red_dye"}]} run function cpp:craft/leather_armor/red
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_chestplate"},{Slot:2b,id:"minecraft:green_dye"}]} run function cpp:craft/leather_armor/green
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_chestplate"},{Slot:2b,id:"minecraft:blue_dye"}]} run function cpp:craft/leather_armor/blue

execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_leggings"},{Slot:2b,id:"minecraft:black_dye"}]} run function cpp:craft/leather_armor/black
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_leggings"},{Slot:2b,id:"minecraft:red_dye"}]} run function cpp:craft/leather_armor/red
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_leggings"},{Slot:2b,id:"minecraft:green_dye"}]} run function cpp:craft/leather_armor/green
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_leggings"},{Slot:2b,id:"minecraft:blue_dye"}]} run function cpp:craft/leather_armor/blue

execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_boots"},{Slot:2b,id:"minecraft:black_dye"}]} run function cpp:craft/leather_armor/black
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_boots"},{Slot:2b,id:"minecraft:red_dye"}]} run function cpp:craft/leather_armor/red
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_boots"},{Slot:2b,id:"minecraft:green_dye"}]} run function cpp:craft/leather_armor/green
execute as @s[scores={cppValue=19}] if block ~ ~ ~ barrel{Items:[{Slot:1b,id:"minecraft:leather_boots"},{Slot:2b,id:"minecraft:blue_dye"}]} run function cpp:craft/leather_armor/blue

execute if data block ~ ~ ~ Items[{Slot:16b}] run function cpp:craft/clear_all
