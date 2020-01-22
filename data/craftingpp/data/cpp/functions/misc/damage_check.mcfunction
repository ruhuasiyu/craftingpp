loot spawn ~ -1 ~ loot cpp:misc/random
execute positioned ~ -1 ~ store result score #rand cppValue run data get entity @e[type=minecraft:item,nbt={Item:{tag:{cppRandomMarker:1b}}},limit=1,distance=..1] Item.tag.AttributeModifiers[0].Amount 1048575
execute positioned ~ -1 ~ run kill @e[type=minecraft:item,nbt={Item:{tag:{cppRandomMarker:1b}}},limit=1,distance=..1]
scoreboard players operation #rand cppValue %= #unbreak_lvl cppValue
execute if score #rand cppValue matches 1.. run scoreboard players remove #damage cppValue 1
