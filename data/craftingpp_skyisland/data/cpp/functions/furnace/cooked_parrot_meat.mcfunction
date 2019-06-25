setblock ~ 255 ~ chest
loot replace block ~ 255 ~ container.2 loot cpp:cooked_parrot_meat
data modify block ~ ~ ~ Items append from block ~ 255 ~ Items[{Slot:2b}]
setblock ~ 255 ~ air
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players remove #temp cppValue 1
data merge block ~ ~ ~ {CookTime:0s}
