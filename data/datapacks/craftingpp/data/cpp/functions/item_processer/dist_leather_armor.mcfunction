setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:firework_star",Count:1b}]}
summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12971000}},Tags:["cpp_temp_item_processer_item"]}
execute at @s run data modify entity @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1] Item set from block ~ ~ ~ Items[{Slot:12b}]
data modify block ~ 255 ~ Items[0].id set from entity @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1] Item.id
data modify block ~ 255 ~ Items[0].tag set from entity @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1] Item.tag
data remove block ~ 255 ~ Items[0].tag.display.color
kill @e[type=item,tag=cpp_temp_item_processer_item,sort=nearest,limit=1]
loot insert ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air