execute at @s[scores={cppCraft=27401}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/chicken",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27402}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/cow",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27403}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/mushroom_cow",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27404}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/sheep/white",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27405}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/pig",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27406}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/rabbit",Tags:["cpp_dead"]}

execute at @s[scores={cppCraft=27501}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/squid",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27502}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/guardian",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27503}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:gameplay/fishing",Tags:["cpp_dead"]}

execute at @s[scores={cppCraft=27601}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/zombie",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27602}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/skeleton",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27603}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/creeper",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27604}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/spider",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27605}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/witch",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27606}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/slime",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27607}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"minecraft:entities/enderman",Tags:["cpp_dead"]}

execute at @s[scores={cppCraft=27401..27503}] run summon xp_orb ~ ~-0.5 ~ {Value:2s,Age:-32768}
execute at @s[scores={cppCraft=27501..27503}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:bucket",Count:1b}}
execute at @s[scores={cppCraft=27601..27607}] run summon xp_orb ~ ~-0.5 ~ {Value:5s,Age:-32768}

execute as @s store result score @s cppCount1 run data get entity @s Items[1].Count
execute as @s store result score @s cppCount4 run data get entity @s Items[4].Count

execute as @s run scoreboard players operation @s cppCount1 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount4 -= #1 cppCount1

execute as @s store result entity @s Items[4].Count byte 1 run scoreboard players get @s cppCount4
execute as @s store result entity @s Items[1].Count byte 1 run scoreboard players get @s cppCount1

scoreboard players set @s cppTicks 0
