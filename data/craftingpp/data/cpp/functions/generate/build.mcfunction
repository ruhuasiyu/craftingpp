# 附魔室
execute as @s[nbt={Item:{tag:{cpp_generate_type:"enchanting_room"}}}] if score #t cppValue matches 1.. run function cpp:generate/structures/enchanting_room
# 图腾柱
execute as @s[nbt={Item:{tag:{cpp_generate_type:"tp_overworld"}}}] run function cpp:generate/structures/tp_overworld
execute as @s[nbt={Item:{tag:{cpp_generate_type:"tp_the_nether"}}}] run function cpp:generate/structures/tp_the_nether
execute as @s[nbt={Item:{tag:{cpp_generate_type:"tp_flower"}}}] run function cpp:generate/structures/tp_flower
# 树
execute as @s[nbt={Item:{tag:{cpp_generate_type:"fruit_tree"}}}] if block ~ ~-1 ~ #cpp:sapling_plantable_on align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/fruit0
execute as @s[nbt={Item:{tag:{cpp_generate_type:"ore_tree"}}}] if block ~ ~-1 ~ #cpp:sapling_plantable_on align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/ore0
execute as @s[nbt={Item:{tag:{cpp_generate_type:"wool_tree"}}}] if block ~ ~-1 ~ #cpp:sapling_plantable_on align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/wool0
execute as @s[nbt={Item:{tag:{cpp_generate_type:"sakura_tree"}}}] if block ~ ~-1 ~ #cpp:sapling_plantable_on align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/sakura0
# 死珊瑚扇
execute as @s[nbt={Item:{tag:{cpp_generate_type:"dead_coral_fan"}}}] run function cpp:generate/structures/dead_coral_fan
# 灌木丛
execute as @s[nbt={Item:{tag:{cpp_generate_type:"small_bush"}}}] if block ~ ~-1 ~ #cpp:sapling_plantable_on run function cpp:generate/structures/small_bush
# 死云杉树
execute as @s[nbt={Item:{tag:{cpp_generate_type:"dead_spruce"}}}] if block ~ ~-1 ~ #cpp:sapling_plantable_on run function cpp:generate/structures/dead_spruce
# 农作物
execute as @s[nbt={Item:{tag:{cpp_generate_type:"crops"}}}] if block ~ ~-1 ~ grass_block run function cpp:generate/structures/crops
# 花草
execute as @s[nbt={Item:{tag:{cpp_generate_type:"modcrops"}}}] run function cpp:generate/structures/modcrops
kill @s
