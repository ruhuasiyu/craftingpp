loot spawn ~ -1 ~ loot cpp:misc/random
execute positioned ~ -1 ~ store result score #rand cppValue run data get entity @e[type=item,nbt={Item:{tag:{randomMarker:1b}}},limit=1,distance=..1] Item.tag.AttributeModifiers[0].Amount 1048575
execute positioned ~ -1 ~ run kill @e[type=item,nbt={Item:{tag:{randomMarker:1b}}},limit=1,distance=..1]
scoreboard players operation #random_interval cppValue = #random_max cppValue
scoreboard players operation #random_interval cppValue -= #random_min cppValue
scoreboard players add #random_interval cppValue 1
scoreboard players operation #rand cppValue %= #random_interval cppValue
scoreboard players operation #rand cppValue += #random_min cppValue
