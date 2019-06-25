data modify block ~ ~ ~ Items[{Slot:1b}].tag.display.color set value 0
data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 16

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players remove #temp value 1
