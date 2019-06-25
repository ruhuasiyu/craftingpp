scoreboard players add @s cppStoredxp 7
execute if score @s cppStoredxp matches 9.. run summon item ~ ~ ~ {Item:{id:"minecraft:experience_bottle",Count:1b}}
execute if score @s cppStoredxp matches 9.. run scoreboard players remove @s cppStoredxp 9
loot spawn ~ ~ ~ kill @e[limit=1,type=#cpp:golem_warrier,sort=nearest,distance=..1,nbt={Invulnerable:0b}]
execute as @e[limit=1,type=#cpp:golem_warrier,sort=nearest,distance=..1,nbt={Invulnerable:0b}] run function cpp:kill
