# 树叶
execute as @e[type=item,sort=nearest,predicate=cpp:item/dropped_acacia_leaves,limit=1,distance=..3] unless data entity @s Item.tag.id run tag @s add cpp_block_drop
data modify entity @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..3] Item set from entity @s ArmorItems[3]
tag @e[type=item,distance=..3,tag=cpp_block_drop] remove cpp_block_drop
# 树苗
execute as @e[type=item,sort=nearest,predicate=cpp:item/dropped_acacia_sapling,limit=1,distance=..3] run tag @s add cpp_block_drop
execute as @s[tag=cpp_ore_leaves] at @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..3] run loot spawn ~ ~ ~ loot cpp:ore_sapling
execute as @s[tag=cpp_wool_leaves] at @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..3] run loot spawn ~ ~ ~ loot cpp:wool_sapling
execute as @s[tag=cpp_fruit_leaves] at @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..3] run loot spawn ~ ~ ~ loot cpp:fruit_sapling
execute as @s[tag=cpp_sakura_leaves] at @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..3] run loot spawn ~ ~ ~ loot cpp:sakura_sapling
kill @e[type=item,distance=..3,tag=cpp_block_drop]
# 其它
execute as @s[tag=cpp_wool_leaves] unless entity @e[type=item,predicate=cpp:item/acacia_leaves,distance=..3] unless entity @e[type=item,predicate=cpp:item/trees,distance=..3] run loot spawn ~ ~ ~ loot cpp:misc/wool_leaves
execute as @s[tag=cpp_sakura_leaves] unless entity @e[type=item,predicate=cpp:item/acacia_leaves,distance=..3] unless entity @e[type=item,predicate=cpp:item/trees,distance=..3] run loot spawn ~ ~ ~ loot cpp:misc/sakura_leaves
kill @s
