execute store result score @s container run data get block ~ ~ ~ Items
function #container:check
execute unless block ~ ~ ~ #container:all run scoreboard players set @s container 0
execute as @s[scores={container=..-1}] run summon area_effect_cloud ~ ~ ~ {Tags:["cpp_item_frame_dist_aec"]}
execute as @s[tag=!cpp_dist_success,scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=east] positioned ~ ~ ~-1 run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=west] positioned ~ ~ ~1 run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=south] positioned ~1 ~ ~ run function cpp:dist/double
execute as @s[tag=!cpp_dist_success,scores={container=0..}] if block ~ ~ ~ #container:chests[type=right,facing=north] positioned ~-1 ~ ~ run function cpp:dist/double
