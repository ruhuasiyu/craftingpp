execute if block ~ ~ ~ wheat[age=7] run loot spawn ~ ~ ~ loot cpp:golem/wheat
execute if block ~ ~ ~ potatoes[age=7] run loot spawn ~ ~ ~ loot cpp:golem/potatoes
execute if block ~ ~ ~ carrots[age=7] run loot spawn ~ ~ ~ loot cpp:golem/carrots
execute if block ~ ~ ~ beetroots[age=3] run loot spawn ~ ~ ~ loot cpp:golem/beetroots
execute if block ~ ~ ~ nether_wart[age=3] run loot spawn ~ ~ ~ loot cpp:golem/nether_wart
execute if block ~ ~ ~ cocoa[age=2] run loot spawn ~ ~ ~ loot cpp:golem/cocoa
execute if block ~ ~ ~ sweet_berry_bush[age=2] run loot spawn ~ ~ ~ loot cpp:golem/sweet_berry_bush2
execute if block ~ ~ ~ sweet_berry_bush[age=3] run loot spawn ~ ~ ~ loot cpp:golem/sweet_berry_bush3

execute if block ~ ~ ~ wheat[age=7] run setblock ~ ~ ~ wheat
execute if block ~ ~ ~ potatoes[age=7] run setblock ~ ~ ~ potatoes
execute if block ~ ~ ~ carrots[age=7] run setblock ~ ~ ~ carrots
execute if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ beetroots
execute if block ~ ~ ~ nether_wart[age=3] run setblock ~ ~ ~ nether_wart
execute if block ~ ~ ~ cocoa[facing=east,age=2] run setblock ~ ~ ~ cocoa[facing=east]
execute if block ~ ~ ~ cocoa[facing=west,age=2] run setblock ~ ~ ~ cocoa[facing=west]
execute if block ~ ~ ~ cocoa[facing=south,age=2] run setblock ~ ~ ~ cocoa[facing=south]
execute if block ~ ~ ~ cocoa[facing=north,age=2] run setblock ~ ~ ~ cocoa[facing=north]
execute if block ~ ~ ~ sweet_berry_bush[age=2] run setblock ~ ~ ~ sweet_berry_bush[age=1]
execute if block ~ ~ ~ sweet_berry_bush[age=3] run setblock ~ ~ ~ sweet_berry_bush[age=1]

execute if block ~ ~ ~ #cpp:golem_farmer run setblock ~ ~ ~ air destroy
