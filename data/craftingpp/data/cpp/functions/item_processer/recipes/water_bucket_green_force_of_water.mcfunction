execute store result block ~ ~ ~ Items[{Slot:12b}].tag.cppLiquid.lava int 0.99999999 run data get block ~ ~ ~ Items[{Slot:12b}].tag.cppLiquid.lava
scoreboard players add #temp cppValue 1
setblock ~ 255 ~1 oak_sign
execute store result score #t cppValue run data get block ~ ~ ~ Items[{Slot:12b}].tag.cppLiquid.lava
data modify block ~ 255 ~1 Text1 set value '[{"color":"red","italic":false,"translate":"block.minecraft.lava"}," ",{"italic":false,"score":{"name":"#t","objective":"cppValue"}}]'
data modify block ~ ~ ~ Items[{Slot:12b}].tag.display.Lore[1] set from block ~ 255 ~1 Text1
setblock ~ 255 ~1 air
