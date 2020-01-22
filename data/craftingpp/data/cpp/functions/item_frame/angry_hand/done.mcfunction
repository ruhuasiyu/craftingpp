scoreboard players add @s cppStoredxp 7
loot spawn ~ ~ ~ kill @e[type=#cpp:golem_warrier,distance=..2,nbt={Invulnerable:0b},limit=1]
execute as @e[type=#cpp:golem_warrier,distance=..2,nbt={Invulnerable:0b},limit=1] run function cpp:kill
execute if score @s cppStoredxp matches 9.. run summon item ~ ~-255 ~ {Item:{id:"minecraft:experience_bottle",Count:1b}}
execute if score @s cppStoredxp matches 9.. run scoreboard players remove @s cppStoredxp 9
