execute positioned ~1 ~ ~ if block ~ ~ ~ #cpp:pickaxe2_chain run function cpp:chain/pickaxe2/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~-1 ~ ~ if block ~ ~ ~ #cpp:pickaxe2_chain run function cpp:chain/pickaxe2/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~1 ~ if block ~ ~ ~ #cpp:pickaxe2_chain run function cpp:chain/pickaxe2/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~-1 ~ if block ~ ~ ~ #cpp:pickaxe2_chain run function cpp:chain/pickaxe2/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~1 if block ~ ~ ~ #cpp:pickaxe2_chain run function cpp:chain/pickaxe2/damage
execute if score #damage cppValue < #max_durality cppValue positioned ~ ~ ~-1 if block ~ ~ ~ #cpp:pickaxe2_chain run function cpp:chain/pickaxe2/damage
