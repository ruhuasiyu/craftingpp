execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:item/leaves_decay
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:item/leaves_decay
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:item/leaves_decay
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:item/leaves_decay
execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:item/leaves_decay
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:leaves[persistent=false,distance=7] run function cpp:item/leaves_decay
kill @s
