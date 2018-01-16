execute store result score @s cppLevel run execute as @e[type=cow,distance=..19,sort=random,limit=31] run data merge entity @s {InLove:100}
clear @s[scores={cppLevel=16..}] wheat 16
scoreboard players remove @s[scores={cppLevel=16..}] cppLevel 16
clear @s[scores={cppLevel=8..}] wheat 8
scoreboard players remove @s[scores={cppLevel=8..}] cppLevel 8
clear @s[scores={cppLevel=4..}] wheat 4
scoreboard players remove @s[scores={cppLevel=4..}] cppLevel 4
clear @s[scores={cppLevel=2..}] wheat 2
scoreboard players remove @s[scores={cppLevel=2..}] cppLevel 2
clear @s[scores={cppLevel=1..}] wheat 1
scoreboard players remove @s[scores={cppLevel=1..}] cppLevel 1

execute store result score @s cppLevel run execute as @e[type=sheep,sort=random,limit=31] run data merge entity @s {InLove:100}
clear @s[scores={cppLevel=16..}] wheat 16
scoreboard players remove @s[scores={cppLevel=16..}] cppLevel 16
clear @s[scores={cppLevel=8..}] wheat 8
scoreboard players remove @s[scores={cppLevel=8..}] cppLevel 8
clear @s[scores={cppLevel=4..}] wheat 4
scoreboard players remove @s[scores={cppLevel=4..}] cppLevel 4
clear @s[scores={cppLevel=2..}] wheat 2
scoreboard players remove @s[scores={cppLevel=2..}] cppLevel 2
clear @s[scores={cppLevel=1..}] wheat 1
scoreboard players remove @s[scores={cppLevel=1..}] cppLevel 1
