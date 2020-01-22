execute at @s run data modify storage cpp:industrious_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:cocoa_beans"}]
execute store result storage cpp:industrious_hand Item.Count byte 0.999 run data get storage cpp:industrious_hand Item.Count
execute at @s run data modify block ~ ~-1 ~ Items append from storage cpp:industrious_hand Item
execute if block ~1 ~ ~ #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[facing=east]
execute if block ~ ~ ~ #cpp:air if block ~-1 ~ ~ #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[facing=west]
execute if block ~ ~ ~ #cpp:air if block ~ ~ ~1 #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[facing=south]
execute if block ~ ~ ~ #cpp:air if block ~ ~ ~-1 #minecraft:jungle_logs run setblock ~ ~ ~ cocoa[facing=north]
