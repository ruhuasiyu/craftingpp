execute if block ~ ~ ~ #container:chests[type=left,facing=east] positioned ~ ~ ~1 run function cpp:trim/type
execute if block ~ ~ ~ #container:chests[type=left,facing=west] positioned ~ ~ ~-1 run function cpp:trim/type
execute if block ~ ~ ~ #container:chests[type=left,facing=south] positioned ~-1 ~ ~ run function cpp:trim/type
execute if block ~ ~ ~ #container:chests[type=left,facing=north] positioned ~1 ~ ~ run function cpp:trim/type
execute unless block ~ ~ ~ #container:chests[type=left] run function cpp:trim/type
