summon minecraft:experience_orb ~ ~ ~ {Value:9s}
execute store result score #t cppValue run data get entity @s Item.tag.cppCompressedLevel
execute if score #t cppValue matches 1.. run function cpp:xp/throw1
kill @s
