# 花草和树生长
execute as @s[tag=!cpp_acacia_sapling] if block ~ ~ ~ acacia_sapling[stage=1] run function cpp:plants/grow
# 破坏树苗和花草
execute unless block ~ ~ ~ acacia_sapling if entity @s[tag=!cpp_plants_dead] run function cpp:plants/break
