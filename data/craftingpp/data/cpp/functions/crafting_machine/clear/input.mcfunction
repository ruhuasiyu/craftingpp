# 处理桶装物和瓶装物
execute if data block ~ ~ ~ Items[{id:"minecraft:water_bucket"}] run function cpp:crafting_machine/craft/clear/water_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:lava_bucket"}] run function cpp:crafting_machine/craft/clear/lava_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:milk_bucket"}] run function cpp:crafting_machine/craft/clear/milk_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:potion"}] run function cpp:crafting_machine/craft/clear/potion
execute if data block ~ ~ ~ Items[{id:"minecraft:honey_bottle"}] run function cpp:crafting_machine/craft/clear/honey_bottle

execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players remove #t cppValue 1
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players remove #t cppValue 1
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:19b}].Count
execute store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players remove #t cppValue 1
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #t cppValue 1
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players remove #t cppValue 1
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:10b}].Count
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players remove #t cppValue 1
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #t cppValue 1
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players remove #t cppValue 1
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players remove #t cppValue 1
