setblock ~ 255 ~ chest
loot replace block ~ 255 ~ container.2 loot cpp:braised_pork_with_potatoes
data modify block ~ ~ ~ Items append from block ~ 255 ~ Items[{Slot:2b}]
setblock ~ 255 ~ air
replaceitem block ~ ~ ~ container.0 air
data merge block ~ ~ ~ {CookTime:0s}
