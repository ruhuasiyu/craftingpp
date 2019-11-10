scoreboard players remove @s cppStoredxp 8
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:22b}].Count
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players remove #temp cppValue 1
scoreboard players reset @s cppTick
scoreboard players set #random_min cppValue 1
scoreboard players set #random_max cppValue 10
function cpp:random
execute if score #rand cppValue matches 1..9 run summon minecraft:villager ~ ~-2 ~ {PersistenceRequired:1b}
execute if score #rand cppValue matches 10 run summon minecraft:wandering_trader ~ ~-2 ~ {PersistenceRequired:1b}
