summon experience_orb ~ ~ ~ {Value:9s}
execute store result score #t cppValue run data get entity @s Item.tag.cpp_compressed_level
execute if score #t cppValue matches 1.. run function cpp:xp/throw1
kill @s
