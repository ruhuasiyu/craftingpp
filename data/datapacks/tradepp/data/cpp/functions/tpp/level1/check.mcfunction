scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 10
execute as @s[nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/random

# 林业员
execute as @s[scores={cppRandom=1},nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/level1/forester
# 圣诞老人
execute as @s[scores={cppRandom=2},nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/level1/santa_claus
# 药剂师
execute as @s[scores={cppRandom=3},nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/level1/pharmacist
# 末地使
execute as @s[scores={cppRandom=4},nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/level1/end_envoy
# 烟花师
execute as @s[scores={cppRandom=5},nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/level1/fireworker
# 园丁
execute as @s[scores={cppRandom=6},nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/level1/gardener
# 机械工
execute as @s[scores={cppRandom=7},nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/level1/mechanician
# 潜水员
execute as @s[scores={cppRandom=8},nbt={VillagerData:{profession:"minecraft:none"}}] run function cpp:tpp/level1/frogman

data modify entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] Offers.Recipes[{sell:{id:"minecraft:bread"}}].sell merge value {tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}
data modify entity @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] Offers.Recipes[{sell:{id:"minecraft:cooked_cod"}}].sell merge value {tag:{display:{Lore:["{\"text\":\"§r\"}"]}}}
data modify entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] Offers.Recipes[{sell:{id:"minecraft:rabbit_stew"}}].sell merge value {id:"minecraft:suspicious_stew",Count:1b,tag:{display:{"Name":"{\"translate\":\"item.cpp.rabbit_stew\"}",Lore:["{\"text\":\"§r\"}","{\"translate\":\"lore.cpp.strength\"}"]},id:"cpp:rabbit_stew",CustomModelData:12970008,Effects:[{EffectDuration:600,EffectId:5b},{EffectDuration:10,EffectId:23b}]}}

data remove entity @s Offers.Recipes[{buy:{id:"minecraft:air"}}]

tag @s add cpp_tpp_level1
scoreboard players reset @s cppRandom
