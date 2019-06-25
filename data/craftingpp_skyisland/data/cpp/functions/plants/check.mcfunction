scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 20
function cpp:random
execute as @s[scores={cppRandom=7..20}] at @s run function cpp:plants/hybrid
scoreboard players reset @s cppRandom

execute if score #temp cppValue matches 12973041 run loot replace entity @s armor.head loot cpp:lycoris_radiata
execute if score #temp cppValue matches 12973042 run loot replace entity @s armor.head loot cpp:trifolium
execute if score #temp cppValue matches 12973043 run loot replace entity @s armor.head loot cpp:blackthorn
execute if score #temp cppValue matches 12973044 run loot replace entity @s armor.head loot cpp:cattail
execute if score #temp cppValue matches 12973045 run loot replace entity @s armor.head loot cpp:marigold
execute if score #temp cppValue matches 12973046 run loot replace entity @s armor.head loot cpp:hibiscus
execute if score #temp cppValue matches 12973047 run loot replace entity @s armor.head loot cpp:hyacinth
execute if score #temp cppValue matches 12973048 run loot replace entity @s armor.head loot cpp:calamus
execute if score #temp cppValue matches 12973049 run loot replace entity @s armor.head loot cpp:wild_lilium
execute if score #temp cppValue matches 12973050 run loot replace entity @s armor.head loot cpp:bauhinia
execute if score #temp cppValue matches 12973051 run loot replace entity @s armor.head loot cpp:fluffy_grass
execute if score #temp cppValue matches 12973052 run loot replace entity @s armor.head loot cpp:gerbera
execute if score #temp cppValue matches 12973053 run loot replace entity @s armor.head loot cpp:esparto
execute if score #temp cppValue matches 12973054 run loot replace entity @s armor.head loot cpp:glow_forsythia
execute if score #temp cppValue matches 12973055 run loot replace entity @s armor.head loot cpp:glazed_shade
execute if score #temp cppValue matches 12973056 run loot replace entity @s armor.head loot cpp:stelera
execute if score #temp cppValue matches 12973057 run loot replace entity @s armor.head loot cpp:forage_crystal
execute if score #temp cppValue matches 12973058 run loot replace entity @s armor.head loot cpp:isorchid
execute if score #temp cppValue matches 12973059 run loot replace entity @s armor.head loot cpp:burning_chrysanthe
execute if score #temp cppValue matches 12973060 run loot replace entity @s armor.head loot cpp:oxalis
