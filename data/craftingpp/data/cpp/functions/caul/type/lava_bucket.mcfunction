data merge entity @s {Item:{id:"minecraft:obsidian"}}
summon item ~ ~ ~ {Item:{id:"minecraft:bucket",Count:1b}}

execute if block ~ ~ ~ cauldron[level=1] run setblock ~ ~ ~ cauldron
execute if block ~ ~ ~ cauldron[level=2] run setblock ~ ~ ~ cauldron[level=1]
execute if block ~ ~ ~ cauldron[level=3] run setblock ~ ~ ~ cauldron[level=2]
