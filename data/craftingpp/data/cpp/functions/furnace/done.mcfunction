execute if data block ~ ~ ~ Items[{Slot:2b}] store result block ~ ~ ~ Items[{Slot:2b}].Count byte -1 run data get block ~ ~ ~ Items[{Slot:2b}].Count -1.0001
execute unless data block ~ ~ ~ Items[{Slot:2b}] run function cpp:furnace/done_loot
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:0b}].Count 0.9999
scoreboard players reset @s cppTick
data modify block ~ ~ ~ CookTime set value 0s
