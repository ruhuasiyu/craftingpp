execute store result score @s container run data get block ~ ~ ~ Items
function #container:check
execute if block ~ ~ ~ #container:all as @s[scores={container=0}] run function cpp:dist/try
execute as @s[scores={container=..-1}] run function cpp:dist/dist
