execute store result score @s cppLevel run fill ~-3 ~1 ~-3 ~4 ~1 ~4 carrots keep
clear @s[scores={cppLevel=64..}] carrot 64
scoreboard players remove @s[scores={cppLevel=64..}] cppLevel 64
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
execute at @s offset ~-3 ~ ~-3 run tp @e[dx=8,dy=1,dz=8,type=item,nbt={Item:{id:"minecraft:carrot"}}] @s
