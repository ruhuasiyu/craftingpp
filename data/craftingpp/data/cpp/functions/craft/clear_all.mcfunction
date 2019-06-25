execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:cheese"}}] run data modify block ~ ~ ~ Items[{id:"minecraft:milk_bucket"}].Count set value 2
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:cheese"}}] run data modify block ~ ~ ~ Items[{id:"minecraft:milk_bucket"}].id set value "minecraft:bucket"
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:high_temperature_plugin"}}] run data modify block ~ ~ ~ Items[{id:"minecraft:lava_bucket"}].Count set value 2
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:high_temperature_plugin"}}] run data modify block ~ ~ ~ Items[{id:"minecraft:lava_bucket"}].id set value "minecraft:bucket"
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:dustbin"}}] run data modify block ~ ~ ~ Items[{id:"minecraft:lava_bucket"}].Count set value 2
execute if data block ~ ~ ~ Items[{Slot:16b,tag:{id:"cpp:dustbin"}}] run data modify block ~ ~ ~ Items[{id:"minecraft:lava_bucket"}].id set value "minecraft:bucket"

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:19b}].Count
execute store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:10b}].Count
execute store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players remove #temp cppValue 1
