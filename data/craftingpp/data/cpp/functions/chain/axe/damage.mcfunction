execute if block ~ ~ ~ #cpp:axe_normal run function cpp:chain/mine
execute if block ~ ~ ~ #cpp:wheat_potatoes_carrots[age=7] run function cpp:chain/mine
execute if block ~ ~ ~ #cpp:beetroots_nether_wart[age=3] run function cpp:chain/mine
execute unless block ~ ~ ~ #cpp:axe_plants run function cpp:chain/damage_check
execute if score #temp cppValue < #max_durality cppValue run function cpp:chain/axe/mark
