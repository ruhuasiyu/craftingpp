execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},Age:0s},distance=..2] run data merge entity @s {Age:2s}
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},Age:1s},distance=..2] run data merge entity @s {Age:2s}
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_leaves"},Age:0s},distance=..2] run data merge entity @s {Age:2s}

execute as @s[tag=cpp_fruit_leaves] as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},Age:2s},distance=..2] run loot spawn ~ ~0.5 ~ loot cpp:fruit_sapling
execute as @s[tag=cpp_ore_leaves] as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},Age:2s},distance=..2] run loot spawn ~ ~0.5 ~ loot cpp:ore_sapling
execute as @s[tag=cpp_wool_leaves] as @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},Age:2s},distance=..2] run loot spawn ~ ~0.5 ~ loot cpp:wool_sapling

execute as @s[tag=cpp_fruit_leaves] as @e[type=item,nbt={Item:{id:"minecraft:acacia_leaves"},Age:2s},distance=..2] run loot spawn ~ ~0.5 ~ loot cpp:fruit_leaves
execute as @s[tag=cpp_ore_leaves] as @e[type=item,nbt={Item:{id:"minecraft:acacia_leaves"},Age:2s},distance=..2] run loot spawn ~ ~0.5 ~ loot cpp:ore_leaves
execute as @s[tag=cpp_wool_leaves] as @e[type=item,nbt={Item:{id:"minecraft:acacia_leaves"},Age:2s},distance=..2] run loot spawn ~ ~0.5 ~ loot cpp:wool_leaves

kill @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},Age:2s},distance=..2]
kill @e[type=item,nbt={Item:{id:"minecraft:acacia_leaves"},Age:2s},distance=..2]

execute as @s[tag=cpp_wool_leaves] unless entity @e[type=item,nbt={Item:{id:"minecraft:acacia_leaves"},Age:0s},distance=..2] unless entity @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling"},Age:0s},distance=..2] run loot spawn ~ ~0.5 ~ loot cpp:crops/wool_few

execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:apricot"}},{}]}] run loot spawn ~ ~ ~ loot cpp:apricot
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:banana"}},{}]}] run loot spawn ~ ~ ~ loot cpp:banana
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:blueberry"}},{}]}] run loot spawn ~ ~ ~ loot cpp:blueberry
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:cherry"}},{}]}] run loot spawn ~ ~ ~ loot cpp:cherry
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:chinese_date"}},{}]}] run loot spawn ~ ~ ~ loot cpp:chinese_date
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:coconut"}},{}]}] run loot spawn ~ ~ ~ loot cpp:coconut
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:golden_grape"}},{}]}] run loot spawn ~ ~ ~ loot cpp:golden_grape
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:grape"}},{}]}] run loot spawn ~ ~ ~ loot cpp:grape
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:grapefruit"}},{}]}] run loot spawn ~ ~ ~ loot cpp:grapefruit
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:hawthorn"}},{}]}] run loot spawn ~ ~ ~ loot cpp:hawthorn
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:lemon"}},{}]}] run loot spawn ~ ~ ~ loot cpp:lemon
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:longan"}},{}]}] run loot spawn ~ ~ ~ loot cpp:longan
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:loquat"}},{}]}] run loot spawn ~ ~ ~ loot cpp:loquat
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:lychee"}},{}]}] run loot spawn ~ ~ ~ loot cpp:lychee
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:mango"}},{}]}] run loot spawn ~ ~ ~ loot cpp:mango
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:orange"}},{}]}] run loot spawn ~ ~ ~ loot cpp:orange
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:payapa"}},{}]}] run loot spawn ~ ~ ~ loot cpp:payapa
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:peach"}},{}]}] run loot spawn ~ ~ ~ loot cpp:peach
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:pear"}},{}]}] run loot spawn ~ ~ ~ loot cpp:pear
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:persimmon"}},{}]}] run loot spawn ~ ~ ~ loot cpp:persimmon
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:plum"}},{}]}] run loot spawn ~ ~ ~ loot cpp:plum
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:pomegranate"}},{}]}] run loot spawn ~ ~ ~ loot cpp:pomegranate
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:strawberry"}},{}]}] run loot spawn ~ ~ ~ loot cpp:strawberry
execute as @s[tag=cpp_fruit_leaves,nbt={HandItems:[{tag:{id:"cpp:tomato"}},{}]}] run loot spawn ~ ~ ~ loot cpp:tomato

kill @s
