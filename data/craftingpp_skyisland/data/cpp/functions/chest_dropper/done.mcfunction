summon item ~ ~-0.5 ~ {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12971000}},Tags:["cpp_chest_dropper_item"]}
data modify entity @e[type=item,tag=cpp_chest_dropper_item,sort=nearest,limit=1] Item set from block ~ ~ ~ Items[0]
tag @e[type=item,tag=cpp_chest_dropper_item,sort=nearest,limit=1] remove cpp_chest_dropper_item
data remove block ~ ~ ~ Items[0]
