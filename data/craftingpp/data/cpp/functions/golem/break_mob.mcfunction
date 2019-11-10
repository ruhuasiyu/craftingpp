scoreboard players add @s cppStoredxp 7
execute at @e[limit=1,type=#cpp:golem_warrier,sort=nearest,distance=..1,nbt={Invulnerable:0b}] run loot spawn ~ ~ ~ kill @e[limit=1,type=#cpp:golem_warrier,sort=nearest,distance=..1,nbt={Invulnerable:0b}]
execute as @e[limit=1,type=#cpp:golem_warrier,distance=..1,nbt={Invulnerable:0b}] run function cpp:kill
