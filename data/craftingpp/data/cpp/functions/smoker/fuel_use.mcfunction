execute store result block ~ ~ ~ BurnTime short 1 run scoreboard players get @s cppValue
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:lava_bucket",Count:1b}] run replaceitem block ~ ~ ~ container.1 bucket 2
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:1b}].Count 0.9999
