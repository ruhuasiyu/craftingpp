execute store result score @s cppValue run xp query @s points
execute store result score @s cppLevel run data get entity @s XpLevel
tag @s[scores={cppLevel=20,cppValue=26..}] add cpp_has_enough_xp
tag @s[scores={cppLevel=21..}] add cpp_has_enough_xp
give @s[tag=cpp_has_enough_xp] experience_bottle{HideFlags:63b,Enchantments:[{id:"minecraft:binding_curse"}],display:{Lore:['{"italic":false,"color":"gold","extra":[{"translate":"item.cpp.compressor.layer"}],"text":"1"}']},cpp_compressed_level:1s,cppStoreHideFlags:0b}
xp add @s[tag=cpp_has_enough_xp] -576
tag @s remove cpp_has_enough_xp
