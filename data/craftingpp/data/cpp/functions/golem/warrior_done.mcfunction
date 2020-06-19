scoreboard players add @s cppStoredxp 7
execute as @s[scores={cppStoredxp=9..}] run function cpp:golem/xp
loot spawn ~ ~ ~ kill @e[type=#cpp:golem_warrier,distance=..1.5,nbt={Invulnerable:0b},limit=1]
execute as @e[type=#cpp:golem_warrier,distance=..1.5,nbt={Invulnerable:0b},limit=1] run function cpp:kill
execute if entity @e[type=#cpp:golem_warrier,distance=..1.5,nbt={Invulnerable:0b}] run function cpp:golem/warrior_done
