scoreboard players add @s cppStoredxp 7
loot spawn ~ ~ ~ kill @e[limit=1,type=#cpp:golem_warrier,distance=..1,nbt={Invulnerable:0b}]
execute as @e[limit=1,type=#cpp:golem_warrier,distance=..1,nbt={Invulnerable:0b}] run function cpp:kill
