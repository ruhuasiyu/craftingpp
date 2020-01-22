loot replace entity @s weapon.mainhand 1 loot cpp:brewing/type
data modify storage cpp:brewing Items append from entity @s HandItems[0]
data modify storage cpp:brewing Items append from entity @s HandItems[0]
data modify storage cpp:brewing Items append from entity @s HandItems[0]
data modify storage cpp:brewing Items[0].Slot set value 0b
data modify storage cpp:brewing Items[1].Slot set value 1b
data modify storage cpp:brewing Items[2].Slot set value 2b

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:0b}] set from storage cpp:brewing Items[0]
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:1b}] set from storage cpp:brewing Items[1]
execute if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:2b}] set from storage cpp:brewing Items[2]

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:0b}] set from storage cpp:brewing Items[0]
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:1b}] set from storage cpp:brewing Items[1]
execute if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:2b}] set from storage cpp:brewing Items[2]

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:0b}] set from storage cpp:brewing Items[0]
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:1b}] set from storage cpp:brewing Items[1]
execute if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}] run data modify block ~ ~ ~ Items[{Slot:2b}] set from storage cpp:brewing Items[2]

execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:3b}].Count
replaceitem entity @s weapon.mainhand minecraft:air
