data modify storage cpp:compressor Item set from entity @s Item
data modify storage cpp:compressor Item.Count set value 64b
execute store result score #t cppValue run data get storage cpp:compressor Item.tag.cppCompressedLevel
execute store result storage cpp:compressor Item.tag.cppCompressedLevel short 1 run scoreboard players remove #t cppValue 1
execute if score #t cppValue matches 0 run function cpp:item/decompress0
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§664×"}'
execute if score #t cppValue matches 2 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§64096×"}'
execute if score #t cppValue matches 3 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§6262144×"}'
execute if score #t cppValue matches 4 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§616777216×"}'
execute if score #t cppValue matches 5 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§61073741824×"}'
execute if score #t cppValue matches 6 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§668719476736×"}'
execute if score #t cppValue matches 7 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§64398046511104×"}'
data modify entity @s Item set from storage cpp:compressor Item
