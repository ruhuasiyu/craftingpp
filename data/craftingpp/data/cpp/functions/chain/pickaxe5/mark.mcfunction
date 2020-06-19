execute positioned ~1 ~ ~ if block ~ ~ ~ #cpp:pickaxe5_chain run function cpp:chain/pickaxe5/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~-1 ~ ~ if block ~ ~ ~ #cpp:pickaxe5_chain run function cpp:chain/pickaxe5/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~1 ~ if block ~ ~ ~ #cpp:pickaxe5_chain run function cpp:chain/pickaxe5/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~-1 ~ if block ~ ~ ~ #cpp:pickaxe5_chain run function cpp:chain/pickaxe5/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~1 if block ~ ~ ~ #cpp:pickaxe5_chain run function cpp:chain/pickaxe5/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~-1 if block ~ ~ ~ #cpp:pickaxe5_chain run function cpp:chain/pickaxe5/damage

