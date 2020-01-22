execute if score @s cppValue matches 1 run data modify storage cpp:toughen_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:carrot"}]
execute if score @s cppValue matches 2 run data modify storage cpp:toughen_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:beetroot"}]
execute if score @s cppValue matches 3 run data modify storage cpp:toughen_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:potato"}]
execute store result storage cpp:toughen_hand Item.Count byte 0.999 run data get storage cpp:toughen_hand Item.Count
data modify block ~ ~-1 ~ Items append from storage cpp:toughen_hand Item
data merge entity @e[type=pig,distance=..9,nbt={Age:0,InLove:0},limit=1] {InLove:600}