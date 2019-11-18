data modify block ~ ~ ~ Items[{Slot:12b}].Count set value 1b
execute if data block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel run data remove block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[-1]
execute unless data block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel run data modify block ~ ~ ~ Items[{Slot:12b}].tag.storeHideFlags set from block ~ ~ ~ Items[{Slot:12b}].tag.HideFlags
execute unless data block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel run data modify block ~ ~ ~ Items[{Slot:12b}].tag.HideFlags set value 63b
execute unless data block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel run data modify block ~ ~ ~ Items[{Slot:12b}].tag.Enchantments append value {id:"minecraft:binding_curse"}

execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel
execute store result block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel short 1 run scoreboard players add #t cppValue 1
execute if score #t cppValue matches 8 run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value '{"text":"§6281474976710656×"}'
execute if score #t cppValue matches 7 run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value '{"text":"§64398046511104×"}'
execute if score #t cppValue matches 6 run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value '{"text":"§668719476736×"}'
execute if score #t cppValue matches 5 run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value '{"text":"§61073741824×"}'
execute if score #t cppValue matches 4 run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value '{"text":"§616777216×"}'
execute if score #t cppValue matches 3 run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value '{"text":"§6262144×"}'
execute if score #t cppValue matches 2 run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value '{"text":"§64096×"}'
execute if score #t cppValue matches 1 run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value '{"text":"§664×"}'

replaceitem block ~ ~ ~ container.15 air
data modify block ~ ~ ~ Items[{Slot:12b}].Slot set value 15b
