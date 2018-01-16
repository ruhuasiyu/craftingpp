execute at @s[scores={cppCraft=21001}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,DeathLootTable:"cpp:red/iron",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=21002}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,DeathLootTable:"cpp:red/gold",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=21003}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,DeathLootTable:"cpp:red/coal",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=21004}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,DeathLootTable:"cpp:red/quartz",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=21005}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,DeathLootTable:"cpp:red/diamond",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=21006}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,DeathLootTable:"cpp:red/emerald",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=21007}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,DeathLootTable:"cpp:red/lapis",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=21008}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,DeathLootTable:"cpp:red/redstone",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=21009}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:potion",tag:{CustomPotionColor:16777215,HideFlags:63,display:{LocName:"cpp.item.bottle_of_salt"}},Count:1b}}
execute at @s[scores={cppCraft=21009}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:bucket",Count:1b}}
execute at @s[scores={cppCraft=21010}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{display:{LocName:"cpp.item.pumande_gem"},ench:[{id:999s}]}}}

execute as @s store result score @s cppCount1 run data get entity @s Items[1].Count
execute as @s store result score @s cppCount2 run data get entity @s Items[2].Count
execute as @s store result score @s cppCount3 run data get entity @s Items[3].Count
execute as @s store result score @s cppCount4 run data get entity @s Items[4].Count

execute as @s run scoreboard players operation @s cppCount1 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount2 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount3 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount4 -= #1 cppCount1

execute as @s store result entity @s Items[4].Count byte 1 run scoreboard players get @s cppCount4
execute as @s store result entity @s Items[3].Count byte 1 run scoreboard players get @s cppCount3
execute as @s store result entity @s Items[2].Count byte 1 run scoreboard players get @s cppCount2
execute as @s store result entity @s Items[1].Count byte 1 run scoreboard players get @s cppCount1

execute at @s[scores={cppCraft=21001..21008}] run advancement grant @a[distance=..5] only cpp:smelt_ore

scoreboard players set @s cppTicks 0