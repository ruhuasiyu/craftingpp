execute positioned ~1 ~ ~ if block ~ ~ ~ #cpp:shovel_chain run function cpp:chain/shovel/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~-1 ~ ~ if block ~ ~ ~ #cpp:shovel_chain run function cpp:chain/shovel/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~1 ~ if block ~ ~ ~ #cpp:shovel_chain run function cpp:chain/shovel/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~-1 ~ if block ~ ~ ~ #cpp:shovel_chain run function cpp:chain/shovel/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~1 if block ~ ~ ~ #cpp:shovel_chain run function cpp:chain/shovel/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~-1 if block ~ ~ ~ #cpp:shovel_chain run function cpp:chain/shovel/damage
