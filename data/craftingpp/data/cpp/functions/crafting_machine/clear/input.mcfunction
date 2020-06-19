# 处理桶装物和瓶装物
execute if data block ~ ~ ~ Items[{id:"minecraft:water_bucket"}] run function cpp:crafting_machine/clear/water_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:lava_bucket"}] run function cpp:crafting_machine/clear/lava_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:milk_bucket"}] run function cpp:crafting_machine/clear/milk_bucket
execute if data block ~ ~ ~ Items[{id:"minecraft:potion"}] run function cpp:crafting_machine/clear/potion
execute if data block ~ ~ ~ Items[{tag:{id:"cpp:bottle_of_salt"}}] run function cpp:crafting_machine/clear/bottle_of_salt

execute if data block ~ ~ ~ Items[{id:"minecraft:honey_bottle"}] run function cpp:crafting_machine/clear/honey_bottle
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:golem_farmer"}}] run function cpp:crafting_machine/clear/golem
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:golem_miner"}}] run function cpp:crafting_machine/clear/golem
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:golem_fisher"}}] run function cpp:crafting_machine/clear/golem
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:golem_warrior"}}] run function cpp:crafting_machine/clear/golem
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:golem_herder"}}] run function cpp:crafting_machine/clear/golem
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{dict:["hand"]}}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.Enchantments set from block ~ ~ ~ Items[{Slot:11b}].tag.Enchantments


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
