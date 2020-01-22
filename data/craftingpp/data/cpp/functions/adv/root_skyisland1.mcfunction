scoreboard players operation @p[tag=cpp_new_player] cppSpawnX = $skyislandDistance cppConfig
execute store result entity @s Pos[0] double 1 run scoreboard players operation @p[tag=cpp_new_player] cppSpawnX *= #skymkx cppValue
scoreboard players operation @p[tag=cpp_new_player] cppSpawnZ = $skyislandDistance cppConfig
execute store result entity @s Pos[2] double 1 run scoreboard players operation @p[tag=cpp_new_player] cppSpawnZ *= #skymkz cppValue
execute at @s run function cpp:adv/root_skyisland_init
kill @s
