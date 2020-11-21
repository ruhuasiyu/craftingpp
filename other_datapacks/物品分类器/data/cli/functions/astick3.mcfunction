execute if block ~ ~ ~ #cli:chests[type=left,facing=east] positioned ~ ~ ~1 run function cli:astick4
execute if block ~ ~ ~ #cli:chests[type=left,facing=west] positioned ~ ~ ~-1 run function cli:astick4
execute if block ~ ~ ~ #cli:chests[type=left,facing=south] positioned ~-1 ~ ~ run function cli:astick4
execute if block ~ ~ ~ #cli:chests[type=left,facing=north] positioned ~1 ~ ~ run function cli:astick4
execute unless block ~ ~ ~ #cli:chests[type=left] run function cli:astick4
