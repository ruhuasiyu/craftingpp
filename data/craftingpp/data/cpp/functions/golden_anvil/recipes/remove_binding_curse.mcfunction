replaceitem block ~ ~ ~ container.16 air
data remove block ~ ~ ~ Items[{Slot:9b}].tag.Enchantments[{id:"minecraft:binding_curse"}]
data modify block ~ ~ ~ Items[{Slot:9b}].Slot set value 16b
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players remove #temp cppValue 1
replaceitem block ~ ~ ~ container.13 air