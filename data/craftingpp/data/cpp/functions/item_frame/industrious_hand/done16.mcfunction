execute at @s run data modify storage cpp:industrious_hand Item set from block ~ ~-1 ~ Items[{tag:{id:"minecraft:acacia_sapling"}}]
execute store result storage cpp:industrious_hand Item.Count byte 0.999 run data get storage cpp:industrious_hand Item.Count
execute at @s run data modify block ~ ~-1 ~ Items append from storage cpp:industrious_hand Item
setblock ~ ~ ~ minecraft:acacia_sapling
execute align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_block"],ArmorItems:[{},{},{},{id:"minecraft:acacia_sapling",tag:{id:"minecraft:acacia_sapling",CustomModelData:12970100},Count:1b}]}
