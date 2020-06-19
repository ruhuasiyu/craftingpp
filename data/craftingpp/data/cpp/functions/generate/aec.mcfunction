execute store result entity @s Pos[0] double 32 run data get entity @s Pos[0] 0.03125
execute store result entity @s Pos[2] double 32 run data get entity @s Pos[2] 0.03125
tag @s remove cpp_temp
# 地牢
execute at @s[predicate=cpp:in_overworld] if predicate cpp:creeper_dungeon run function cpp:generate/structures/creeper_dungeon
execute at @s[predicate=cpp:in_flower] run function cpp:generate/structures/flower_dungeon
