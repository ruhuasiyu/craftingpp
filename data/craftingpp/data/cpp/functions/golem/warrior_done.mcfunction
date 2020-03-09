scoreboard players add @s cppStoredxp 7
execute if score @s cppStoredxp matches 9.. run function cpp:golem/xp
loot spawn ~ ~ ~ kill @e[limit=1,type=#cpp:golem_warrier,sort=nearest,distance=..1.5,nbt={Invulnerable:0b}]
execute as @e[limit=1,type=#cpp:golem_warrier,sort=nearest,distance=..1.5,nbt={Invulnerable:0b}] run function cpp:kill
