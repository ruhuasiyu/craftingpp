execute store result score @s container run data get block ~ ~ ~ Items
function #container:check
execute as @s[scores={container=..-1}] run function cpp:dist/dist
execute as @s[tag=!cpp_dist_success,scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=east] positioned ~ ~ ~-1 run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=west] positioned ~ ~ ~1 run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=south] positioned ~1 ~ ~ run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=north] positioned ~-1 ~ ~ run function cpp:dist/double
