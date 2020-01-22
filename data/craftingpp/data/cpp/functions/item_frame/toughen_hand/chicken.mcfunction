execute if score @s cppValue matches 1 run data modify storage cpp:toughen_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:wheat_seeds"}]
execute if score @s cppValue matches 2 run data modify storage cpp:toughen_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:beetroot_seeds"}]
execute if score @s cppValue matches 3 run data modify storage cpp:toughen_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:pumpkin_seeds"}]
execute if score @s cppValue matches 4 run data modify storage cpp:toughen_hand Item set from block ~ ~-1 ~ Items[{id:"minecraft:melon_seeds"}]
execute store result storage cpp:toughen_hand Item.Count byte 0.999 run data get storage cpp:toughen_hand Item.Count
data modify block ~ ~-1 ~ Items append from storage cpp:toughen_hand Item
data merge entity @e[type=chicken,distance=..9,nbt={Age:0,InLove:0},limit=1] {InLove:600}
