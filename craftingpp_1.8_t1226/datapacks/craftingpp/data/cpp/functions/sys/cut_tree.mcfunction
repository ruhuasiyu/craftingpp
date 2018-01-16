execute at @s if block ~ ~1 ~ #minecraft:logs run setblock ~ ~1 ~ air destroy
execute at @s if block ~1 ~1 ~ #minecraft:logs run setblock ~1 ~1 ~ air destroy
execute at @s if block ~ ~1 ~1 #minecraft:logs run setblock ~ ~1 ~1 air destroy
execute at @s if block ~-1 ~1 ~ #minecraft:logs run setblock ~-1 ~1 ~ air destroy
execute at @s if block ~ ~1 ~-1 #minecraft:logs run setblock ~ ~1 ~-1 air destroy
execute at @s if block ~1 ~ ~ #minecraft:logs run setblock ~1 ~ ~ air destroy
execute at @s if block ~ ~ ~1 #minecraft:logs run setblock ~ ~ ~1 air destroy
execute at @s if block ~-1 ~ ~ #minecraft:logs run setblock ~-1 ~ ~ air destroy
execute at @s if block ~ ~ ~-1 #minecraft:logs run setblock ~ ~ ~-1 air destroy
execute at @s if block ~1 ~ ~-1 #minecraft:logs run setblock ~1 ~ ~-1 air destroy
execute at @s if block ~-1 ~ ~-1 #minecraft:logs run setblock ~-1 ~ ~-1 air destroy
execute at @s if block ~-1 ~ ~1 #minecraft:logs run setblock ~-1 ~ ~1 air destroy
execute at @s if block ~1 ~ ~1 #minecraft:logs run setblock ~1 ~ ~1 air destroy
execute at @s if block ~1 ~1 ~-1 #minecraft:logs run setblock ~1 ~1 ~-1 air destroy
execute at @s if block ~-1 ~1 ~-1 #minecraft:logs run setblock ~-1 ~1 ~-1 air destroy
execute at @s if block ~-1 ~1 ~1 #minecraft:logs run setblock ~-1 ~1 ~1 air destroy
execute at @s if block ~1 ~1 ~1 #minecraft:logs run setblock ~1 ~1 ~1 air destroy

execute at @s if block ~1 ~ ~ minecraft:melon_block run setblock ~1 ~ ~ air destroy
execute at @s if block ~ ~ ~1 minecraft:melon_block run setblock ~ ~ ~1 air destroy
execute at @s if block ~-1 ~ ~ minecraft:melon_block run setblock ~-1 ~ ~ air destroy
execute at @s if block ~ ~ ~-1 minecraft:melon_block run setblock ~ ~ ~-1 air destroy

execute at @s if block ~1 ~ ~ minecraft:pumpkin run setblock ~1 ~ ~ air destroy
execute at @s if block ~ ~ ~1 minecraft:pumpkin run setblock ~ ~ ~1 air destroy
execute at @s if block ~-1 ~ ~ minecraft:pumpkin run setblock ~-1 ~ ~ air destroy
execute at @s if block ~ ~ ~-1 minecraft:pumpkin run setblock ~ ~ ~-1 air destroy

tag @e[type=item,distance=..2,tag=!cpp_tree,nbt={Item:{id:"minecraft:oak_log"},Age:0s}] add cpp_tree
tag @e[type=item,distance=..2,tag=!cpp_tree,nbt={Item:{id:"minecraft:spruce_log"},Age:0s}] add cpp_tree
tag @e[type=item,distance=..2,tag=!cpp_tree,nbt={Item:{id:"minecraft:birch_log"},Age:0s}] add cpp_tree
tag @e[type=item,distance=..2,tag=!cpp_tree,nbt={Item:{id:"minecraft:jungle_log"},Age:0s}] add cpp_tree
tag @e[type=item,distance=..2,tag=!cpp_tree,nbt={Item:{id:"minecraft:acacia_log"},Age:0s}] add cpp_tree
tag @e[type=item,distance=..2,tag=!cpp_tree,nbt={Item:{id:"minecraft:dark_oak_log"},Age:0s}] add cpp_tree
tag @e[type=item,distance=..2,tag=!cpp_tree,nbt={Item:{id:"minecraft:pumpkin"},Age:0s}] add cpp_tree
tag @e[type=item,distance=..2,tag=!cpp_tree,nbt={Item:{id:"minecraft:melon"},Age:0s}] add cpp_tree

tag @s remove cpp_tree