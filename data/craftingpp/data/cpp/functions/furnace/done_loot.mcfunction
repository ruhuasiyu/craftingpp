clone ~ ~ ~ ~ ~ ~ ~ 255 ~
loot replace block ~ 255 ~ container.0 loot cpp:furnace/furnace
data modify block ~ 255 ~ Items[{Slot:0b}].Slot set value 2b
data modify block ~ ~ ~ Items append from block ~ 255 ~ Items[{Slot:2b}]
setblock ~ 255 ~ air
