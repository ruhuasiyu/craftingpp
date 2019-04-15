kill @s
summon minecraft:experience_orb ~ ~ ~ {Tags:["cpp_xp_orb"],Value:1s}
execute store result entity @e[type=minecraft:experience_orb,tag=cpp_xp_orb,limit=1] Value short 1 run scoreboard players get #xp_in_bottle cppValue
tag @e[type=minecraft:experience_orb,tag=cpp_xp_orb,limit=1] remove cpp_xp_orb
