execute as @s[predicate=cpp:has_sword] if entity @e[limit=1,type=#cpp:golem_warrier,distance=..1,nbt={Invulnerable:0b}] run function cpp:golem/break_mob
execute as @s[predicate=!cpp:has_sword] unless block ~ ~ ~ #cpp:golem_omit run function cpp:golem/break_block
