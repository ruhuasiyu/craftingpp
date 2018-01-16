execute store result score @s cppLevel run fill ~-3 ~1 ~-3 ~4 ~1 ~4 nether_wart keep
clear @s[scores={cppLevel=64..}] nether_wart 64
scoreboard players remove @s[scores={cppLevel=64..}] cppLevel 64
clear @s[scores={cppLevel=32..}] nether_wart 32
scoreboard players remove @s[scores={cppLevel=32..}] cppLevel 32
clear @s[scores={cppLevel=16..}] nether_wart 16
scoreboard players remove @s[scores={cppLevel=16..}] cppLevel 16
clear @s[scores={cppLevel=8..}] nether_wart 8
scoreboard players remove @s[scores={cppLevel=8..}] cppLevel 8
clear @s[scores={cppLevel=4..}] nether_wart 4
scoreboard players remove @s[scores={cppLevel=4..}] cppLevel 4
clear @s[scores={cppLevel=2..}] nether_wart 2
scoreboard players remove @s[scores={cppLevel=2..}] cppLevel 2
clear @s[scores={cppLevel=1..}] nether_wart 1
scoreboard players remove @s[scores={cppLevel=1..}] cppLevel 1
execute at @s offset ~-3 ~ ~-3 run tp @e[dx=8,dy=2,dz=8,type=item,nbt={Item:{id:"minecraft:nether_wart"}}] @s
