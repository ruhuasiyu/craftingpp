data modify storage cpp:compressor Item set from block ~ ~ ~ Items[{Slot:12b}]

data modify storage cpp:compressor Item.Count set value 1b
execute store result score #t cppValue run data get storage cpp:compressor Item.tag.cpp_compressed_level
execute store result storage cpp:compressor Item.tag.cpp_compressed_level short 1 run scoreboard players add #t cppValue 1
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.cppStoreHideFlags set value 0b
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.cppStoreHideFlags set from storage cpp:compressor Item.tag.HideFlags
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.HideFlags set value 63b
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.Enchantments append value {id:"minecraft:binding_curse"}
setblock ~ 255 ~ oak_sign
data modify block ~ 255 ~ Text1 set value '[{"score":{"name":"#t","objective":"cppValue"},"color":"gold","italic":"false"},{"translate":"item.cpp.compressor.layer"}]'
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.display.Lore append from block ~ 255 ~ Text1
execute if score #t cppValue matches 2.. run data modify storage cpp:compressor Item.tag.display.Lore[-1] set from block ~ 255 ~ Text1
setblock ~ 255 ~ air

replaceitem block ~ ~ ~ container.12 air
data modify storage cpp:compressor Item.Slot set value 15b
data modify block ~ ~ ~ Items append from storage cpp:compressor Item
