execute unless score #load_bsd cppValue matches 1 if entity @a run function cpp:bsd/init

execute as @a[scores={cppBsdIntFur=1..}] at @s anchored eyes run function cpp:bsd/block_breaker/ray
execute as @e[type=armor_stand,tag=cpp_block_breaker] at @s run function cpp:bsd/block_breaker/auto

execute as @e[type=armor_stand,tag=cpp_block_breaker] at @s unless block ~ ~ ~ furnace as @e[type=item,nbt={Item:{id:"minecraft:furnace",Count:1b}},distance=..2,limit=1] at @s run data remove entity @s Item.tag.display
execute as @e[type=armor_stand,tag=cpp_block_breaker] at @s unless block ~ ~ ~ furnace run kill @s

execute as @e[type=armor_stand,tag=cpp_block_breaker] at @s positioned ~ ~1 ~ if block ~ ~ ~ cauldron if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cobblestone",Count:4b}}] run function cpp:bsd/cauldron/lava
execute as @e[type=armor_stand,tag=cpp_bsd_lava] at @s run function cpp:bsd/cauldron/lava_tick

execute as @e[type=armor_stand,tag=cpp_block_breaker] at @s positioned ~ ~1 ~ if block ~ ~ ~ cauldron if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:snowball",Count:4b}}] run function cpp:bsd/cauldron/water
execute as @e[type=armor_stand,tag=cpp_bsd_water] at @s run function cpp:bsd/cauldron/water_tick
