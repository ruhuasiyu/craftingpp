execute store result score @s cppLevel run execute as @e[type=rabbit,distance=..19,sort=random,limit=63] run data merge entity @s {InLove:100}
clear @s[scores={cppLevel=32..}] carrot 32
scoreboard players remove @s[scores={cppLevel=32..}] cppLevel 32
clear @s[scores={cppLevel=16..}] carrot 16
scoreboard players remove @s[scores={cppLevel=16..}] cppLevel 16
clear @s[scores={cppLevel=8..}] carrot 8
scoreboard players remove @s[scores={cppLevel=8..}] cppLevel 8
clear @s[scores={cppLevel=4..}] carrot 4
scoreboard players remove @s[scores={cppLevel=4..}] cppLevel 4
clear @s[scores={cppLevel=2..}] carrot 2
scoreboard players remove @s[scores={cppLevel=2..}] cppLevel 2
clear @s[scores={cppLevel=1..}] carrot 1
scoreboard players remove @s[scores={cppLevel=1..}] cppLevel 1
