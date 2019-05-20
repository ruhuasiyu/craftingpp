# 添加更多地图
execute as @s[nbt={VillagerData:{profession:"minecraft:cartographer"},Offers:{Recipes:[{buyB:{id:"minecraft:compass"}}]}}] run function cpp:tpp/level3/cartographer
data remove entity @s Offers.Recipes[{sell:{id:"minecraft:air"}}]
tag @s add cpp_tpp_level3
