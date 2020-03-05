# 附魔室
execute as @s[nbt={Item:{tag:{cppGenerateType:"enchanting_room"}}}] if score #t cppValue matches 1.. run function cpp:generate/structures/enchanting_room
# 图腾柱
execute as @s[nbt={Item:{tag:{cppGenerateType:"totem_pillar"}}}] run function cpp:generate/structures/totem_pillar
# 水果树
execute as @s[nbt={Item:{tag:{cppGenerateType:"fruit_tree"}}}] if block ~ ~-1 ~ #cpp:dirt align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/fruit
# 矿石树
execute as @s[nbt={Item:{tag:{cppGenerateType:"ore_tree"}}}] if block ~ ~-1 ~ #cpp:dirt align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/ore
# 羊毛树
execute as @s[nbt={Item:{tag:{cppGenerateType:"wool_tree"}}}] if block ~ ~-1 ~ #cpp:dirt align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/wool

# 死珊瑚扇
execute as @s[nbt={Item:{tag:{cppGenerateType:"dead_coral_fan"}}}] run function cpp:generate/structures/dead_coral_fan

# 灌木丛
execute as @s[nbt={Item:{tag:{cppGenerateType:"small_bush"}}}] if block ~ ~-1 ~ #cpp:dirt run function cpp:generate/structures/small_bush

# 死云杉树
execute as @s[nbt={Item:{tag:{cppGenerateType:"dead_spruce"}}}] if block ~ ~-1 ~ #cpp:dirt run function cpp:generate/structures/dead_spruce

# 农作物
execute as @s[nbt={Item:{tag:{cppGenerateType:"crops"}}}] if block ~ ~-1 ~ minecraft:grass_block run function cpp:generate/structures/crops

# 花草
execute as @s[nbt={Item:{tag:{cppGenerateType:"modcrops"}}}] if block ~ ~-1 ~ #cpp:dirt run function cpp:generate/structures/modcrops

kill @s
