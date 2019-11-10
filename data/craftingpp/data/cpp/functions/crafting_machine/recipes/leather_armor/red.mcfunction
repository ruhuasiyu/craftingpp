execute store result score #t2 cppValue run data get block ~ ~ ~ Items[{Slot:1b}].tag.display.color 0.0000152587891
scoreboard players set #t1 cppValue 255
scoreboard players operation #t1 cppValue -= #t2 cppValue
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score #t1 cppValue > #t cppValue run scoreboard players operation #t1 cppValue = #t cppValue
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players operation #t cppValue -= #t1 cppValue
scoreboard players operation #t1 cppValue *= #65536 cppValue
execute store result score #t2 cppValue run data get block ~ ~ ~ Items[{Slot:1b}].tag.display.color
execute store result block ~ ~ ~ Items[{Slot:1b}].tag.display.color int 1 run scoreboard players operation #t2 cppValue += #t1 cppValue
replaceitem block ~ ~ ~ container.16 air
data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 16b
