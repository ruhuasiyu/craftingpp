execute store result score @s container run data get block ~ ~ ~ Items
function #container:check
execute as @s[scores={container=..-1}] run summon area_effect_cloud ~ ~ ~ {Tags:["cli_dist_pos"]}
