execute if block ~ ~ ~ #cpp:axe_normal run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ #cpp:axe_normal run setblock ~ ~ ~ air
execute if block ~ ~ ~ wheat[age=7] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ wheat[age=7] run setblock ~ ~ ~ air
execute if block ~ ~ ~ beetroots[age=3] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ air
execute if block ~ ~ ~ potatoes[age=7] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ potatoes[age=7] run setblock ~ ~ ~ air
execute if block ~ ~ ~ carrots[age=7] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ carrots[age=7] run setblock ~ ~ ~ air
execute if block ~ ~ ~ nether_wart[age=3] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ nether_wart[age=3] run setblock ~ ~ ~ air

execute unless block ~ ~ ~ #cpp:axe_plants run function cpp:chain/damage_check
execute if score #temp cppValue < #max_durality cppValue run function cpp:chain/axe/mark
