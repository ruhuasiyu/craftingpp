execute if block ~ ~ ~ #cpp:industrious_hand_drop run loot spawn ~ ~-2 ~ loot cpp:golem/industrious_hand
execute if block ~ ~ ~ #cpp:industrious_hand_grow if entity @e[type=item,nbt={Item:{id:"minecraft:shears"}},distance=..3] run function cpp:golem/hand/industrious_hand_grow
execute store result entity @s Item.Count byte 0.999 run data get entity @s Item.Count
