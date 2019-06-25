execute as @s[tag=cpp_moon_stone] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b},Age:0s},distance=..2] run loot spawn ~ ~ ~ loot cpp:moon_stone
execute as @s[tag=cpp_sun_stone] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b},Age:0s},distance=..2] run loot spawn ~ ~ ~ loot cpp:sun_stone

kill @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b}},distance=..2,limit=1]
kill @s
