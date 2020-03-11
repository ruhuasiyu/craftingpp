replaceitem block ~ ~ ~ container.15 air
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:12b}].tag.cppLiquid.water
execute store result block ~ ~ ~ Items[{Slot:12b}].tag.cppLiquid.water int 1 run scoreboard players add #t cppValue 1
setblock ~ 255 ~1 oak_sign
data modify block ~ 255 ~1 Text1 set value '[{"translate":"item.cpp.infinite_bucket.water"}," ",{"score":{"name":"#t","objective":"cppValue"}}]'
data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[0] set from block ~ 255 ~1 Text1
setblock ~ 255 ~1 air
data modify block ~ ~ ~ Items[{Slot:12b}].Slot set value 15b
