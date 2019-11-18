setblock ~ ~ ~ air
kill @s
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12971000}},Tags:["cpp_temp"]}
data modify entity @e[type=item,tag=cpp_temp,distance=..0.1,limit=1] Item set from storage cpp:loc_block Item
tag @e[type=item,tag=cpp_temp,distance=..0.1,limit=1] remove cpp_temp
