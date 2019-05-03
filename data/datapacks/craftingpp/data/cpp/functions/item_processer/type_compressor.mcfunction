summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["cpp_temp_item_processer_item"]}
execute at @s run data modify entity @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1] Item set from block ~ ~ ~ Items[{Slot:12b}]
execute as @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1] run function cpp:use_carrot_on_a_stick/tool/compressor/compress
setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 255 ~ Items[0].id set from entity @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1] Item.id
data modify block ~ 255 ~ Items[0].tag set from entity @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1] Item.tag
kill @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1]
loot insert ~ ~ ~ mine ~ 255 ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:255s}]}
setblock ~ 255 ~ air