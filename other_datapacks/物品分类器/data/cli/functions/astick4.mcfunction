data modify entity @s HandItems[0] set value {id:"minecraft:structure_void",Count:1b}
data modify entity @s HandItems[0].id set from entity @e[type=item_frame,tag=cli_item_frame,limit=1] Item.id
execute at @s store result score @s clivalue run data modify entity @s HandItems[0].id set from block ~ ~1 ~ Items[0].id
execute at @s unless data block ~ ~1 ~ Items[] run scoreboard players set @s clivalue 1
execute if score @s clivalue matches 0 run function cli:dist
data remove entity @s HandItems[0]
