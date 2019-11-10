data modify storage cpp:trim Items set from block ~ ~ ~ Items
data remove block ~ ~ ~ Items
execute if data storage cpp:trim Items[0] run function cpp:trim/loop

execute if block ~ ~ ~ #container:chests[type=right,facing=east] positioned ~ ~ ~-1 run function cpp:trim/type2
execute if block ~ ~ ~ #container:chests[type=right,facing=west] positioned ~ ~ ~1 run function cpp:trim/type2
execute if block ~ ~ ~ #container:chests[type=right,facing=south] positioned ~1 ~ ~ run function cpp:trim/type2
execute if block ~ ~ ~ #container:chests[type=right,facing=north] positioned ~-1 ~ ~ run function cpp:trim/type2
execute if data storage cpp:trim Items[0] run function cpp:trim/loop2
