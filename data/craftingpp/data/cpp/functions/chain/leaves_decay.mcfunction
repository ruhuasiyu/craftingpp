loot spawn ~ ~ ~ mine ~ ~ ~ air
setblock ~ ~ ~ air
execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:chain/leaves_decay
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:chain/leaves_decay
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:chain/leaves_decay
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:chain/leaves_decay
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:chain/leaves_decay
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:chain/leaves_decay
