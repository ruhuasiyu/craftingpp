summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b},Tags:["cpp_temp"]}
data modify entity @e[type=item,tag=cpp_temp,limit=1,distance=..0.01] Item set from entity @s ArmorItems[3]
tag @e[type=item,tag=cpp_temp,limit=1,distance=..0.01] remove cpp_temp
kill @s
