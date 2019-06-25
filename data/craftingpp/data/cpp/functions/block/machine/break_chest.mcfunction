kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},distance=..2,limit=1]

execute as @s[tag=cpp_beacon_enhancer] run loot spawn ~ ~ ~ loot cpp:beacon_enhancer

kill @s
