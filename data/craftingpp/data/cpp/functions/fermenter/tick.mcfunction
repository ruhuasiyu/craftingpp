execute unless block ~ ~ ~ minecraft:composter run kill @s
execute if block ~ ~ ~ minecraft:composter[level=0] as @s[tag=cpp_fermenter_full] run data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:bone_meal",Count:1b},Age:0s},distance=..4] Item.id set value "minecraft:dirt"
tag @s remove cpp_fermenter_full
execute if block ~ ~ ~ minecraft:composter[level=7] run tag @s add cpp_fermenter_full
execute if block ~ ~ ~ minecraft:composter[level=8] run tag @s add cpp_fermenter_full
