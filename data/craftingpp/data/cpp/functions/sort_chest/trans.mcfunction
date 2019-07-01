execute at @s run data modify entity @s HandItems[0].tag.store set from block ~ ~ ~ Items[-1]
execute at @s run data remove block ~ ~ ~ Items[-1]
execute store result entity @s HandItems[0].tag.store.Slot byte 1 run scoreboard players get #chest1 cppValue
data modify block ~ ~ ~ Items append from entity @s HandItems[0].tag.store
function cpp:sort_chest/sort
function cpp:sort_chest/check_full
