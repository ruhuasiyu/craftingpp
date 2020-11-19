execute store result score @s container run data get block ~ ~ ~ Items
function #container:check

execute unless block ~ ~ ~ #container:all run scoreboard players set @s container 0
execute as @s[scores={container=..-1}] run summon area_effect_cloud ~ ~ ~ {Tags:["cli_dist_pos"]}
execute as @s[scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=east] positioned ~ ~ ~-1 run function cli:dist_double
execute as @s[scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=west] positioned ~ ~ ~1 run function cli:dist_double
execute as @s[scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=south] positioned ~1 ~ ~ run function cli:dist_double
execute as @s[scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=north] positioned ~-1 ~ ~ run function cli:dist_double
execute as @s[scores={container=0..}] if block ~ ~ ~ #container:chests[type=left,facing=east] positioned ~ ~ ~1 run function cli:dist_double
execute as @s[scores={container=0..}] if block ~ ~ ~ #container:chests[type=left,facing=west] positioned ~ ~ ~-1 run function cli:dist_double
execute as @s[scores={container=0..}] if block ~ ~ ~ #container:chests[type=left,facing=south] positioned ~-1 ~ ~ run function cli:dist_double
execute as @s[scores={container=0..}] if block ~ ~ ~ #container:chests[type=left,facing=north] positioned ~1 ~ ~ run function cli:dist_double
