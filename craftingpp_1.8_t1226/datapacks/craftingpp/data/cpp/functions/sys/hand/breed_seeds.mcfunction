execute store result score @s cppLevel run execute as @e[type=chicken,distance=..19,sort=random,limit=63] run data merge entity @s {InLove:100}
clear @s[scores={cppLevel=32..}] wheat_seeds 32
scoreboard players remove @s[scores={cppLevel=32..}] cppLevel 32
clear @s[scores={cppLevel=16..}] wheat_seeds 16
scoreboard players remove @s[scores={cppLevel=16..}] cppLevel 16
clear @s[scores={cppLevel=8..}] wheat_seeds 8
scoreboard players remove @s[scores={cppLevel=8..}] cppLevel 8
clear @s[scores={cppLevel=4..}] wheat_seeds 4
scoreboard players remove @s[scores={cppLevel=4..}] cppLevel 4
clear @s[scores={cppLevel=2..}] wheat_seeds 2
scoreboard players remove @s[scores={cppLevel=2..}] cppLevel 2
clear @s[scores={cppLevel=1..}] wheat_seeds 1
scoreboard players remove @s[scores={cppLevel=1..}] cppLevel 1
