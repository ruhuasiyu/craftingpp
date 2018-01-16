execute at @s[scores={cppCraft=27101}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/wheat",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27102}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/beetroot",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27103}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:carrot",Count:9b}}
execute at @s[scores={cppCraft=27104}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:potato",Count:9b}}
execute at @s[scores={cppCraft=27105}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:pumpkin",Count:3b}}
execute at @s[scores={cppCraft=27106}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:melon_block",Count:3b}}
execute at @s[scores={cppCraft=27107}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:sugar_cane",Count:6b}}

execute at @s[scores={cppCraft=27201}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:cocoa_beans",Count:6b}}
execute at @s[scores={cppCraft=27202}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:nether_wart",Count:6b}}

execute at @s[scores={cppCraft=27211}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:lily_pad",Count:6b}}
execute at @s[scores={cppCraft=27212}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:cactus",Count:6b}}
execute at @s[scores={cppCraft=27213}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:brown_mushroom",Count:6b}}
execute at @s[scores={cppCraft=27214}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:red_mushroom",Count:6b}}
execute at @s[scores={cppCraft=27215}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:dandelion",Count:6b}}
execute at @s[scores={cppCraft=27216}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:poppy",Count:6b}}
execute at @s[scores={cppCraft=27217}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:blue_orchid",Count:6b}}
execute at @s[scores={cppCraft=27218}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:allium",Count:6b}}
execute at @s[scores={cppCraft=27219}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:azure_bluet",Count:6b}}
execute at @s[scores={cppCraft=27220}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:red_tulip",Count:6b}}
execute at @s[scores={cppCraft=27221}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:orange_tulip",Count:6b}}
execute at @s[scores={cppCraft=27222}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:white_tulip",Count:6b}}
execute at @s[scores={cppCraft=27223}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:pink_tulip",Count:6b}}
execute at @s[scores={cppCraft=27224}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:oxeye_daisy",Count:6b}}
execute at @s[scores={cppCraft=27225}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:sunflower",Count:6b}}
execute at @s[scores={cppCraft=27226}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:lilac",Count:6b}}
execute at @s[scores={cppCraft=27227}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:rose_bush",Count:6b}}
execute at @s[scores={cppCraft=27228}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:peony",Count:6b}}
execute at @s[scores={cppCraft=27229}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:vine",Count:6b}}

execute at @s[scores={cppCraft=27301}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/oak",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27302}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/spruce",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27303}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/birch",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27304}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/jungle",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27305}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/acacia",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27306}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/dark_oak",Tags:["cpp_dead"]}
execute at @s[scores={cppCraft=27307}] run summon bat ~ ~-0.5 ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,NoAI:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:purple/chorus",Tags:["cpp_dead"]}

execute as @s store result score @s cppCount1 run data get entity @s Items[1].Count
execute as @s store result score @s cppCount3 run data get entity @s Items[3].Count
execute as @s store result score @s cppCount4 run data get entity @s Items[4].Count

execute as @s run scoreboard players operation @s cppCount1 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount3 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount4 -= #1 cppCount1

execute as @s store result entity @s Items[4].Count byte 1 run scoreboard players get @s cppCount4
execute as @s store result entity @s Items[3].Count byte 1 run scoreboard players get @s cppCount3
execute as @s store result entity @s Items[1].Count byte 1 run scoreboard players get @s cppCount1

scoreboard players set @s cppTicks 0