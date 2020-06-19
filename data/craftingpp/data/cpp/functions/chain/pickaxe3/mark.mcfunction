execute positioned ~1 ~ ~ if block ~ ~ ~ #cpp:pickaxe3_chain run function cpp:chain/pickaxe3/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~-1 ~ ~ if block ~ ~ ~ #cpp:pickaxe3_chain run function cpp:chain/pickaxe3/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~1 ~ if block ~ ~ ~ #cpp:pickaxe3_chain run function cpp:chain/pickaxe3/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~-1 ~ if block ~ ~ ~ #cpp:pickaxe3_chain run function cpp:chain/pickaxe3/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~1 if block ~ ~ ~ #cpp:pickaxe3_chain run function cpp:chain/pickaxe3/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~-1 if block ~ ~ ~ #cpp:pickaxe3_chain run function cpp:chain/pickaxe3/damage
