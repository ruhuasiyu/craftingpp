execute store result score #t cppValue run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score #t cppValue matches 12970101..12970117 run scoreboard players remove #t cppValue 100
execute if score #t cppValue matches 12970201..12970217 run scoreboard players remove #t cppValue 200
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #t cppValue

tag @e[type=item,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:oak_sign",Count:1b}},limit=1,distance=..2] add cpp_block_drop
tag @e[type=item,sort=nearest,nbt={Age:1s,Item:{id:"minecraft:oak_sign",Count:1b}},limit=1,distance=..2] add cpp_block_drop
data modify entity @e[type=item,sort=nearest,tag=cpp_block_drop,limit=1,distance=..2] Item set from entity @s ArmorItems[3]
tag @e[type=item,distance=..2,tag=cpp_block_drop] remove cpp_block_drop
kill @s
