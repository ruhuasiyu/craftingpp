loot spawn ~ ~ ~ fish minecraft:gameplay/fishing ~ ~ ~ mainhand
scoreboard players add @s cppStoredxp 3
execute if score @s cppStoredxp matches 9.. run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:experience_bottle",Count:1b}}
execute if score @s cppStoredxp matches 9.. run scoreboard players remove @s cppStoredxp 9
