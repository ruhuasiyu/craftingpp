summon bat ~ ~255 ~ {Tags:["cpp_golem_bat"],DeathLootTable:"cpp:golem/end",NoAI:1b,Invulnerable:1b}
execute positioned ~ ~255 ~ run loot spawn ~ ~-255 ~ kill @e[type=bat,distance=..1,tag=cpp_golem_bat,limit=1]
execute positioned ~ ~255 ~ run kill @e[type=bat,distance=..1,limit=1]
kill @s
