setblock ~ 255 ~ chest
data modify block ~ 255 ~ Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:cocoa_beans"}]
execute store result storage cpp:golem Item.Count byte 0.99 run data get storage cpp:golem Item.Count
data modify block ~ 255 ~ Items append from storage cpp:golem Item
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~ Items
setblock ~ 255 ~ air

execute if block ~1 ~ ~ #jungle_logs run setblock ~ ~ ~ cocoa[facing=east]
execute if block ~ ~ ~ #cpp:air if block ~-1 ~ ~ #jungle_logs run setblock ~ ~ ~ cocoa[facing=west]
execute if block ~ ~ ~ #cpp:air if block ~ ~ ~1 #jungle_logs run setblock ~ ~ ~ cocoa[facing=south]
execute if block ~ ~ ~ #cpp:air if block ~ ~ ~-1 #jungle_logs run setblock ~ ~ ~ cocoa[facing=north]
