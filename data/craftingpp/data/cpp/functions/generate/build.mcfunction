# 爬行者地牢
execute if score #generate_creeper_dungeon cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:creeper_dungeon_marker"}}}] if block ~ 15 ~ cave_air run function cpp:generate/structures/creeper_dungeon
# 附魔室
execute if score #generate_enchanting_room cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:enchanting_room_marker"}}}] run function cpp:generate/structures/enchanting_room
# 图腾柱
execute if score #generate_totem_pillar cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:totem_pillar_marker"}}}] run function cpp:generate/structures/totem_pillar

# 水果树
execute if score #generate_fruit_tree cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:fruit_tree_marker"}}}] if block ~ ~-1 ~ #cpp:dirt align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/fruit
# 矿石树
execute if score #generate_ore_tree cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:ore_tree_marker"}}}] if block ~ ~-1 ~ #cpp:dirt align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/ore
# 羊毛树
execute if score #generate_wool_tree cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:wool_tree_marker"}}}] if block ~ ~-1 ~ #cpp:dirt align xyz positioned ~0.5 ~ ~0.5 run function cpp:plants/trees/wool

# 死珊瑚扇
execute if score #generate_dead_coral_fan cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:dead_coral_fan_marker"}}}] run function cpp:generate/structures/dead_coral_fan

# 灌木丛
execute if score #generate_small_bush cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:small_bush_marker"}}}] if block ~ ~-1 ~ #cpp:dirt run function cpp:generate/structures/small_bush

# 死云杉树
execute if score #generate_dead_spruce cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:dead_spruce_marker"}}}] unless block ~ ~-1 ~ #cpp:fluid run function cpp:generate/structures/dead_spruce

# 农作物
execute if score #generate_crops cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:crops_marker"}}}] if block ~ ~-1 ~ #cpp:dirt run function cpp:generate/structures/crops

# 花草
execute if score #generate_modcrops cppValue matches 1.. as @s[nbt={Item:{tag:{id:"cpp:modcrops_marker"}}}] if block ~ ~-1 ~ #cpp:dirt run function cpp:generate/structures/modcrops

kill @s
