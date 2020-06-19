data modify storage cpp:compressor Item.tag.HideFlags set from storage cpp:compressor Item.tag.cppStoreHideFlags
data remove storage cpp:compressor Item.tag{HideFlags:0b}.HideFlags
data remove storage cpp:compressor Item.tag.cppStoreHideFlags
data remove storage cpp:compressor Item.tag.Enchantments[-1]
data remove storage cpp:compressor Item.tag.cpp_compressed_level
data remove storage cpp:compressor Item.tag.display.Lore[-1]
execute unless data storage cpp:compressor Item.tag.display.Lore[0] run data remove storage cpp:compressor Item.tag.display.Lore
execute store result score #t0 cppValue run data get storage cpp:compressor Item.tag.display
execute if score #t0 cppValue matches 0 run data remove storage cpp:compressor Item.tag.display
execute unless data storage cpp:compressor Item.tag.Enchantments[0] run data remove storage cpp:compressor Item.tag.Enchantments
execute store result score #t0 cppValue run data get storage cpp:compressor Item.tag
execute if score #t0 cppValue matches 0 run data remove storage cpp:compressor Item.tag
