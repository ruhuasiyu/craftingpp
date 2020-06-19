execute positioned ~1 ~ ~ if block ~ ~ ~ #cpp:pickaxe1_chain run function cpp:chain/pickaxe1/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~-1 ~ ~ if block ~ ~ ~ #cpp:pickaxe1_chain run function cpp:chain/pickaxe1/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~1 ~ if block ~ ~ ~ #cpp:pickaxe1_chain run function cpp:chain/pickaxe1/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~-1 ~ if block ~ ~ ~ #cpp:pickaxe1_chain run function cpp:chain/pickaxe1/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~1 if block ~ ~ ~ #cpp:pickaxe1_chain run function cpp:chain/pickaxe1/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~-1 if block ~ ~ ~ #cpp:pickaxe1_chain run function cpp:chain/pickaxe1/damage
