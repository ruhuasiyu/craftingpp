kill @s
summon experience_orb ~ ~ ~ {Tags:["cpp_xp_orb64"],Value:1s}
scoreboard players set #temp cppValue 64
execute store result entity @e[type=experience_orb,tag=cpp_xp_orb64,limit=1] Value short 1 run scoreboard players operation #temp cppValue *= #xp_in_bottle cppValue
tag @e[type=experience_orb,tag=cpp_xp_orb64,limit=1] remove cpp_xp_orb64
