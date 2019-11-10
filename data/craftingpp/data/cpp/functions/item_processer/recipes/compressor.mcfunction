data modify block ~ ~ ~ Items[{Slot:12b}].Count set value 1b
execute if data block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel run data remove block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[-1]
execute unless data block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel if data block ~ ~ ~ Items[{Slot:12b}].tag.HideFlags run data modify block ~ ~ ~ Items[{Slot:12b}].tag.storeHideFlags set from block ~ ~ ~ Items[{Slot:12b}].tag.HideFlags
execute unless data block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel run data modify block ~ ~ ~ Items[{Slot:12b}].tag.HideFlags set value 63b
execute unless data block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel run data modify block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel set value 0s

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel
execute store result block ~ ~ ~ Items[{Slot:12b}].tag.compressedLevel short 1 run scoreboard players add #temp cppValue 1

execute as @s[nbt={Item:{tag:{compressedLevel:8s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value "{\"text\":\"§6281474976710656×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:7s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value "{\"text\":\"§64398046511104×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:6s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value "{\"text\":\"§668719476736×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:5s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value "{\"text\":\"§61073741824×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:4s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value "{\"text\":\"§616777216×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:3s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value "{\"text\":\"§6262144×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:2s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value "{\"text\":\"§64096×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:1s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append value "{\"text\":\"§664×\"}"
execute as @s[nbt={Item:{tag:{compressedLevel:1s}}}] run data modify block ~ ~ ~ Items[{Slot:12b}].tag.Enchantments append value {id:"minecraft:binding_curse"}

replaceitem block ~ ~ ~ container.15 air
data modify block ~ ~ ~ Items[{Slot:12b}].Slot set value 15b
