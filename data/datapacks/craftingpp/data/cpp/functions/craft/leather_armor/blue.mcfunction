scoreboard players set #temp2 cppValue 0
execute store result score #temp2 cppValue run data get block ~ ~ ~ Items[{Slot:1b}].tag.display.color
scoreboard players set #256 cppValue 256
scoreboard players operation #temp2 cppValue %= #256 cppValue
scoreboard players set #temp1 cppValue 255
scoreboard players operation #temp1 cppValue -= #temp2 cppValue
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score #temp1 cppValue > #temp cppValue run scoreboard players operation #temp1 cppValue = #temp cppValue
scoreboard players operation #temp cppValue -= #temp1 cppValue
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get #temp cppValue

execute store result score #temp2 cppValue run data get block ~ ~ ~ Items[{Slot:1b}].tag.display.color
scoreboard players operation #temp1 cppValue += #temp2 cppValue

execute store result block ~ ~ ~ Items[{Slot:1b}].tag.display.color int 1 run scoreboard players get #temp1 cppValue
data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 16
