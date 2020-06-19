data modify storage cpp:compressor Item set from entity @s Item
data modify storage cpp:compressor Item.Count set value 64b
execute store result score #t cppValue run data get storage cpp:compressor Item.tag.cpp_compressed_level
execute store result storage cpp:compressor Item.tag.cpp_compressed_level short 1 run scoreboard players remove #t cppValue 1
execute if score #t cppValue matches 0 run function cpp:item/decompress0

setblock ~ 255 ~ oak_sign
data modify block ~ 255 ~ Text1 set value '[{"score":{"name":"#t","objective":"cppValue"},"color":"gold","italic":"false"},{"translate":"item.cpp.compressor.layer"}]'
execute if score #t cppValue matches 1.. run data modify storage cpp:compressor Item.tag.display.Lore[-1] set from block ~ 255 ~ Text1
setblock ~ 255 ~ air

data modify entity @s Item set from storage cpp:compressor Item
