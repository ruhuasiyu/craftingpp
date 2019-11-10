data modify entity @s Pos set from entity @e[type=zombie_pigman,tag=cpp_golem_back,limit=1] HandItems[1].tag.spawnPos
execute at @s as @e[type=zombie_pigman,tag=cpp_golem_back,limit=1] run tp ~ ~ ~
kill @s
