replaceitem block ~ ~ ~ container.16 enchanted_book{StoredEnchantments:[{}]}
data modify block ~ ~ ~ Items[{Slot:16b}].tag.StoredEnchantments set from block ~ ~ ~ Items[{Slot:9b}].tag.Enchantments
data remove block ~ ~ ~ Items[{Slot:9b}].tag.Enchantments
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players remove #temp cppValue 1
replaceitem block ~ ~ ~ container.13 air
