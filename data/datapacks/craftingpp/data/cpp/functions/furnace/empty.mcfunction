replaceitem block ~ ~ ~ container.2 air
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players remove #temp cppValue 1
data merge block ~ ~ ~ {CookTime:0s}
