setblock ~ 255 ~ shulker_box
data modify entity @s HandItems[0] set value {id:"minecraft:structure_void",Count:1b}
execute at @s run data modify entity @s HandItems[0].tag set from block ~ ~1 ~ Items[0]
data modify block ~ 255 ~ Items append from entity @s HandItems[0].tag
loot spawn ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
execute at @e[tag=cli_source] run data remove block ~ ~1 ~ Items[0]
data remove entity @s HandItems[0]
kill @e[type=area_effect_cloud,tag=cli_dist_pos,distance=..1,limit=1]
