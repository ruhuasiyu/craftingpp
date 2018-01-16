summon area_effect_cloud ~32 0 ~32 {Tags:["cpp_chunk"],Duration:2147483647}
summon bat ~32 ~ ~32 {Silent:1b,NoAI:1,DeathLootTable:"cpp:generate/dungeon",Tags:["cpp_dead","cpp_bat_dungeon"]}
spreadplayers ~32 ~32 17 33 false @e[tag=cpp_bat_dungeon]
