replaceitem block ~ ~ ~ container.16 air
data modify block ~ ~ ~ Items[{Slot:15b}].Count set from block ~ ~ ~ Items[{Slot:12b}].tag.cppLiquid.lava
data modify block ~ ~ ~ Items[{Slot:12b}].tag.cppLiquid.lava set value 0
data remove block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore
setblock ~ 255 ~1 oak_sign
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:12b}].tag.cppLiquid.water
data modify block ~ 255 ~1 Text1 set value '[{"translate":"item.cpp.infinite_bucket.water"}," ",{"score":{"name":"#t","objective":"cppValue"}}]'
execute if score #t cppValue matches 1.. run data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore append from block ~ 255 ~1 Text1
setblock ~ 255 ~1 air
data modify block ~ ~ ~ Items[{Slot:12b}].Slot set value 16b
