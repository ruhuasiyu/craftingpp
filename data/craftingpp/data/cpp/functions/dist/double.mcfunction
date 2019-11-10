execute store result score @s container run data get block ~ ~ ~ Items
scoreboard players remove @s container 27
execute as @s[scores={container=..-1}] run function cpp:dist/dist
