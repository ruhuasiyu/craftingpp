data modify block ~ ~ ~ Items[{Slot:1b}].tag.display.color set value 0
replaceitem block ~ ~ ~ container.16 air
data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 16b
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players remove #t cppValue 1
