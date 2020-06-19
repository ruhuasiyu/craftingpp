execute positioned ~1 ~ ~ if block ~ ~ ~ #cpp:hoe_chain run function cpp:chain/hoe/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~-1 ~ ~ if block ~ ~ ~ #cpp:hoe_chain run function cpp:chain/hoe/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~1 ~ if block ~ ~ ~ #cpp:hoe_chain run function cpp:chain/hoe/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~-1 ~ if block ~ ~ ~ #cpp:hoe_chain run function cpp:chain/hoe/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~1 if block ~ ~ ~ #cpp:hoe_chain run function cpp:chain/hoe/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~-1 if block ~ ~ ~ #cpp:hoe_chain run function cpp:chain/hoe/damage
