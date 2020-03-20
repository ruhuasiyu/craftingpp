execute store result entity @s Pos[0] double 1 run data get entity @a[tag=cpp_tp_target_player,limit=1] SpawnX
execute store result entity @s Pos[1] double 1 run data get entity @a[tag=cpp_tp_target_player,limit=1] SpawnY
execute store result entity @s Pos[2] double 1 run data get entity @a[tag=cpp_tp_target_player,limit=1] SpawnZ
execute at @s run tp @a[tag=cpp_tp_target_player,limit=1] ~ ~1 ~
kill @s