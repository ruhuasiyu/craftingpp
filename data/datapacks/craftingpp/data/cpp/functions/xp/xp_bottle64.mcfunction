scoreboard players set #remove_xp_value cppValue 64
scoreboard players operation #remove_xp_value cppValue *= #xp_in_bottle cppValue
function cpp:xp/remove_check
give @s[tag=cpp_has_enough_xp] experience_bottle{HideFlags:63,Enchantments:[{id:"minecraft:binding_curse"}],display:{Lore:["{\"text\":\"§664×\"}"]},compressedLevel:1s}
tag @s remove cpp_has_enough_xp