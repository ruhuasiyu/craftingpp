data modify storage cpp:toughen_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:wheat"}]
execute store result storage cpp:toughen_hand Item.Count byte 0.99 run data get storage cpp:toughen_hand Item.Count
data modify block ~ ~-1 ~ Items append from storage cpp:toughen_hand Item
data merge entity @e[type=#cpp:eat_wheat,distance=..9,nbt={Age:0,InLove:0},limit=1] {InLove:600}
