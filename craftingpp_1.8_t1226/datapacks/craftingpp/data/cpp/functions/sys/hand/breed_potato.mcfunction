execute store success score @s cppLevel as @e[type=pig,distance=..19,sort=random,limit=63] run data merge entity @s {InLove:100}
clear @s[scores={cppLevel=32..}] potato 32
scoreboard players remove @s[scores={cppLevel=32..}] cppLevel 32
clear @s[scores={cppLevel=16..}] potato 16
scoreboard players remove @s[scores={cppLevel=16..}] cppLevel 16
clear @s[scores={cppLevel=8..}] potato 8
scoreboard players remove @s[scores={cppLevel=8..}] cppLevel 8
clear @s[scores={cppLevel=4..}] potato 4
scoreboard players remove @s[scores={cppLevel=4..}] cppLevel 4
clear @s[scores={cppLevel=2..}] potato 2
scoreboard players remove @s[scores={cppLevel=2..}] cppLevel 2
clear @s[scores={cppLevel=1..}] potato 1
scoreboard players remove @s[scores={cppLevel=1..}] cppLevel 1
