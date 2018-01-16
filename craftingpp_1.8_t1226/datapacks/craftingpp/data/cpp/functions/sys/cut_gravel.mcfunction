execute at @s if block ~ ~1 ~ #cpp:sands run setblock ~ ~1 ~ air destroy
execute at @s if block ~1 ~ ~ #cpp:sands run setblock ~1 ~ ~ air destroy
execute at @s if block ~ ~ ~1 #cpp:sands run setblock ~ ~ ~1 air destroy
execute at @s if block ~-1 ~ ~ #cpp:sands run setblock ~-1 ~ ~ air destroy
execute at @s if block ~ ~ ~-1 #cpp:sands run setblock ~ ~ ~-1 air destroy
execute at @s if block ~ ~-1 ~ #cpp:sands run setblock ~ ~-1 ~ air destroy

execute as @e[type=item,distance=..2,tag=!cpp_gravel,nbt={Item:{id:"minecraft:gravel"},Age:0s}] at @s if entity @a[distance=..10] run tag @s add cpp_gravel
execute as @e[type=item,distance=..2,tag=!cpp_gravel,nbt={Item:{id:"minecraft:flint"},Age:0s}] at @s if entity @a[distance=..10] run tag @s add cpp_gravel
execute as @e[type=item,distance=..2,tag=!cpp_gravel,nbt={Item:{id:"minecraft:clay_ball"},Age:0s}] at @s if entity @a[distance=..10] run tag @s add cpp_gravel
execute as @e[type=item,distance=..2,tag=!cpp_gravel,nbt={Item:{id:"minecraft:sand"},Age:0s}] at @s if entity @a[distance=..10] run tag @s add cpp_gravel
execute as @e[type=item,distance=..2,tag=!cpp_gravel,nbt={Item:{id:"minecraft:red_sand"},Age:0s}] at @s if entity @a[distance=..10] run tag @s add cpp_gravel

tag @s remove cpp_gravel