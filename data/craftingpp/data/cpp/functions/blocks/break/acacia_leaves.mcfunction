# 树叶
tag @e[type=item,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:acacia_leaves",Count:1b}},limit=1,distance=..2] add cpp_block_drop
tag @e[type=item,sort=nearest,nbt={Age:1s,Item:{id:"minecraft:acacia_leaves",Count:1b}},limit=1,distance=..2] add cpp_block_drop
data modify entity @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..2] Item set from entity @s ArmorItems[3]
tag @e[type=item,distance=..2,tag=cpp_block_drop] remove cpp_block_drop
# 树苗
tag @e[type=item,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:acacia_sapling",Count:1b}},limit=1,distance=..2] add cpp_block_drop
tag @e[type=item,sort=nearest,nbt={Age:1s,Item:{id:"minecraft:acacia_sapling",Count:1b}},limit=1,distance=..2] add cpp_block_drop
execute as @s[tag=cpp_ore_leaves] at @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..2] run loot spawn ~ ~ ~ loot cpp:ore_sapling
execute as @s[tag=cpp_wool_leaves] at @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..2] run loot spawn ~ ~ ~ loot cpp:wool_sapling
execute as @s[tag=cpp_fruit_leaves] at @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..2] run loot spawn ~ ~ ~ loot cpp:fruit_sapling
kill @e[type=item,distance=..2,tag=cpp_block_drop]
# 羊毛
execute as @s[tag=cpp_wool_leaves] unless entity @e[type=item,nbt={Item:{id:"minecraft:acacia_leaves"}},distance=..2] unless entity @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"}},distance=..2] run loot spawn ~ ~ ~ loot cpp:items/wool_few
kill @s
