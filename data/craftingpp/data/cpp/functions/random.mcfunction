loot spawn ~ -1 ~ loot cpp:random/attr
execute positioned ~ -1 ~ store result score @s cppRandom run data get entity @e[type=item,nbt={Item:{tag:{isRdMark:1b}}},limit=1,distance=..1] Item.tag.AttributeModifiers[0].Amount 1048575
execute positioned ~ -1 ~ run kill @e[type=item,nbt={Item:{tag:{isRdMark:1b}}},limit=1,distance=..1]

scoreboard players operation #random_max cppRandom -= #random_min cppRandom
scoreboard players add #random_max cppRandom 1
scoreboard players operation @s cppRandom %= #random_max cppRandom
scoreboard players operation @s cppRandom += #random_min cppRandom
