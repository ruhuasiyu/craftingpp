data modify storage cpp:chest_dropper Item set from block ~ ~-255 ~ Items[0]
data modify storage cpp:chest_dropper Item.Count set value 1b
data modify entity @s Item set from storage cpp:chest_dropper Item
tag @s remove cpp_temp
tp ~ ~-255.3 ~
execute store result block ~ ~-255 ~ Items[0].Count byte 0.999 run data get block ~ ~-255 ~ Items[0].Count
