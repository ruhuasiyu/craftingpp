data modify storage cpp:compressor Item set from entity @s Item

data modify storage cpp:compressor Item.Count set value 1b
execute store result score #t cppValue run data get storage cpp:compressor Item.tag.cppCompressedLevel
execute store result storage cpp:compressor Item.tag.cppCompressedLevel short 1 run scoreboard players add #t cppValue 1
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.cppStoreHideFlags set value 0b
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.cppStoreHideFlags set from storage cpp:compressor Item.tag.HideFlags
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.HideFlags set value 63b
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.Enchantments append value {id:"minecraft:binding_curse"}
execute if score #t cppValue matches 1 run data modify storage cpp:compressor Item.tag.display.Lore append value '{"text":"§664×"}'
execute if score #t cppValue matches 2 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§64096×"}'
execute if score #t cppValue matches 3 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§6262144×"}'
execute if score #t cppValue matches 4 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§616777216×"}'
execute if score #t cppValue matches 5 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§61073741824×"}'
execute if score #t cppValue matches 6 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§668719476736×"}'
execute if score #t cppValue matches 7 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§64398046511104×"}'
execute if score #t cppValue matches 8 run data modify storage cpp:compressor Item.tag.display.Lore[-1] set value '{"text":"§6281474976710656×"}'

data modify entity @s Item set from storage cpp:compressor Item
tag @s add cpp_item_checked
