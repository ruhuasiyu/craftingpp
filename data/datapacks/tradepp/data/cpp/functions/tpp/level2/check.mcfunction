execute as @s[tag=cpp_tpp_forester] run function cpp:tpp/level2/forester
execute as @s[tag=cpp_tpp_pharmacist] run function cpp:tpp/level2/pharmacist
execute as @s[tag=cpp_tpp_end_envoy] run function cpp:tpp/level2/end_envoy
execute as @s[tag=cpp_tpp_fireworker] run function cpp:tpp/level2/fireworker
execute as @s[tag=cpp_tpp_gardener] run function cpp:tpp/level2/gardener
execute as @s[tag=cpp_tpp_mechanician] run function cpp:tpp/level2/mechanician
execute as @s[tag=cpp_tpp_frogman] run function cpp:tpp/level2/frogman

# 添加更多地图
execute as @s[nbt={VillagerData:{profession:"minecraft:cartographer"},Offers:{Recipes:[{buyB:{id:"minecraft:compass"}}]}}] run function cpp:tpp/level2/cartographer
data remove entity @s Offers.Recipes[{sell:{id:"minecraft:air"}}]
tag @s add cpp_tpp_level2
