execute store result score @s cppLevel run fill ~-3 ~1 ~-3 ~4 ~1 ~4 beetroots keep
clear @s[scores={cppLevel=64..}] beetroot_seeds 64
scoreboard players remove @s[scores={cppLevel=64..}] cppLevel 64
clear @s[scores={cppLevel=32..}] beetroot_seeds 32
scoreboard players remove @s[scores={cppLevel=32..}] cppLevel 32
clear @s[scores={cppLevel=16..}] beetroot_seeds 16
scoreboard players remove @s[scores={cppLevel=16..}] cppLevel 16
clear @s[scores={cppLevel=8..}] beetroot_seeds 8
scoreboard players remove @s[scores={cppLevel=8..}] cppLevel 8
clear @s[scores={cppLevel=4..}] beetroot_seeds 4
scoreboard players remove @s[scores={cppLevel=4..}] cppLevel 4
clear @s[scores={cppLevel=2..}] beetroot_seeds 2
scoreboard players remove @s[scores={cppLevel=2..}] cppLevel 2
clear @s[scores={cppLevel=1..}] beetroot_seeds 1
scoreboard players remove @s[scores={cppLevel=1..}] cppLevel 1
execute at @s offset ~-3 ~ ~-3 run tp @e[dx=8,dy=1,dz=8,type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}] @s
