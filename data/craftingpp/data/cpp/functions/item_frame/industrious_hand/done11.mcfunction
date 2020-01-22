execute at @s run data modify storage cpp:industrious_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:sweet_berries"}]
execute store result storage cpp:industrious_hand Item.Count byte 0.999 run data get storage cpp:industrious_hand Item.Count
execute at @s run data modify block ~ ~-1 ~ Items append from storage cpp:industrious_hand Item
setblock ~ ~ ~ minecraft:sweet_berry_bush
