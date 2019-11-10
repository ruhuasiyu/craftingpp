summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b},Tags:["cpp_golem_drop_main"]}
data modify entity @e[type=item,limit=1,distance=..0.01,tag=cpp_golem_drop_main] Item set from entity @s HandItems[0]
tag @e[type=item,limit=1,distance=..0.01,tag=cpp_golem_drop_main] remove cpp_golem_drop_main

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b},Tags:["cpp_golem_drop_tool"]}
data modify entity @e[type=item,limit=1,distance=..0.01,tag=cpp_golem_drop_tool] Item set from entity @s HandItems[1].tag.switch
tag @e[type=item,limit=1,distance=..0.01,tag=cpp_golem_drop_tool] remove cpp_golem_drop_main

data remove entity @s HandItems[1].tag.switch
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:shulker_box",Count:1b},Tags:["cpp_golem_drop_off"]}
data modify entity @e[type=item,limit=1,distance=..0.01,tag=cpp_golem_drop_off] Item set from entity @s HandItems[1]
tag @e[type=item,limit=1,distance=..0.01,tag=cpp_golem_drop_off] remove cpp_golem_drop_off

loot spawn ~ ~ ~ loot cpp:golem
function cpp:kill
