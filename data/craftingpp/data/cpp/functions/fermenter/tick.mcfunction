# execute unless block ~ ~ ~ minecraft:composter run kill @s
# execute if block ~ ~ ~ minecraft:composter[level=0] as @s[tag=cpp_fermenter_full] as @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:bone_meal",Count:1b},Age:0s},distance=..4] run function cpp:fermenter/done
# tag @s remove cpp_fermenter_full
# execute if block ~ ~ ~ minecraft:composter[level=7] run tag @s add cpp_fermenter_full
# execute if block ~ ~ ~ minecraft:composter[level=8] run tag @s add cpp_fermenter_full

execute if block ~ ~ ~ minecraft:composter[level=7] run setblock ~ ~ ~ composter[level=8]
execute if block ~ ~ ~ minecraft:composter[level=8] run loot spawn ~ ~ ~ loot cpp:misc/fermenter
execute if block ~ ~ ~ minecraft:composter[level=8] run setblock ~ ~ ~ composter[level=0]

