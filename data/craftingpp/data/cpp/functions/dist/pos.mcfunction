execute if block ~ ~ ~ #container:chests[type=left,facing=east] positioned ~ ~ ~1 run function cpp:dist/pos2
execute if block ~ ~ ~ #container:chests[type=left,facing=west] positioned ~ ~ ~-1 run function cpp:dist/pos2
execute if block ~ ~ ~ #container:chests[type=left,facing=south] positioned ~-1 ~ ~ run function cpp:dist/pos2
execute if block ~ ~ ~ #container:chests[type=left,facing=north] positioned ~1 ~ ~ run function cpp:dist/pos2
execute unless block ~ ~ ~ #container:chests[type=left] run function cpp:dist/pos2
data remove storage cpp:dist Item
