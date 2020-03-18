execute if predicate cpp:furnace/item2 store result block ~ ~ ~ Items[{Slot:2b}].Count byte -1 run data get block ~ ~ ~ Items[{Slot:2b}].Count -1.0001
execute unless predicate cpp:furnace/item2 run function cpp:blast_furnace/done_loot
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run data get block ~ ~ ~ Items[{Slot:0b}].Count 0.9999
scoreboard players reset @s cppTick
data modify block ~ ~ ~ CookTime set value 0s
execute store result score #t cppValue run data get block ~ ~ ~ RecipesUsed."minecraft:charcoal"
execute store result block ~ ~ ~ RecipesUsed."minecraft:charcoal" int 1 run scoreboard players add #t cppValue 1
