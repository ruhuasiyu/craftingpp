data modify entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] Offers.Recipes[{sell:{id:"minecraft:cookie"}}].sell merge value {tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}
data modify entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] Offers.Recipes[{sell:{id:"minecraft:cooked_beef"}}].sell merge value {tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}
execute as @s[nbt={VillagerData:{profession:"minecraft:cartographer"},Offers:{Recipes:[{buyB:{id:"minecraft:compass"}}]}}] run function cpp:tpp/level3/cartographer
data remove entity @s Offers.Recipes[{sell:{id:"minecraft:air"}}]
tag @s add cpp_tpp_level3
