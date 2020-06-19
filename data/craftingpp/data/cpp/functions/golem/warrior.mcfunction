execute if block ~ ~-1 ~ #cpp:air run function cpp:golem/control_end
execute as @s[scores={cppStoredxp=9..}] run function cpp:golem/xp
execute if entity @e[type=#cpp:golem_warrier,distance=..1.5,nbt={Invulnerable:0b}] run function cpp:golem/warrior_done
