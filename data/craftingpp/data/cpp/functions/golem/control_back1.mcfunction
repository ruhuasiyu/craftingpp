data modify entity @s Pos set from entity @e[type=zombified_piglin,tag=cpp_golem_back,limit=1] HandItems[1].tag.spawnPos
tellraw @p {"entity":"@e[type=zombified_piglin,tag=cpp_golem_back,limit=1]","nbt":"Pos"}
execute at @s as @e[type=zombified_piglin,tag=cpp_golem_back,limit=1] run tp ~ ~ ~
tellraw @p {"entity":"@e[type=zombified_piglin,tag=cpp_golem_back,limit=1]","nbt":"Pos"}
kill @s
say 1
tellraw @p {"entity":"@s","nbt":"Pos"}