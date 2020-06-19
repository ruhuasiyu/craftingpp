execute positioned ~1 ~ ~ if block ~ ~ ~ #cpp:pickaxe4_chain run function cpp:chain/pickaxe4/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~-1 ~ ~ if block ~ ~ ~ #cpp:pickaxe4_chain run function cpp:chain/pickaxe4/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~1 ~ if block ~ ~ ~ #cpp:pickaxe4_chain run function cpp:chain/pickaxe4/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~-1 ~ if block ~ ~ ~ #cpp:pickaxe4_chain run function cpp:chain/pickaxe4/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~1 if block ~ ~ ~ #cpp:pickaxe4_chain run function cpp:chain/pickaxe4/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~-1 if block ~ ~ ~ #cpp:pickaxe4_chain run function cpp:chain/pickaxe4/damage
