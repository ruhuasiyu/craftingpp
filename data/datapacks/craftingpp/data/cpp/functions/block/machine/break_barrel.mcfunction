kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b}},distance=..2,limit=1]

execute as @s[tag=cpp_low_pressure] run loot spawn ~ ~ ~ loot cpp:low_pressure_plugin
execute as @s[tag=cpp_high_pressure] run loot spawn ~ ~ ~ loot cpp:high_pressure_plugin
execute as @s[tag=cpp_low_temperature] run loot spawn ~ ~ ~ loot cpp:low_temperature_plugin
execute as @s[tag=cpp_high_temperature] run loot spawn ~ ~ ~ loot cpp:high_temperature_plugin

execute as @s[tag=cpp_crafting_machine,tag=!cpp_portable_crafting_machine] run loot spawn ~ ~ ~ loot cpp:crafting_machine
execute as @s[tag=cpp_all_in_one_machine] run loot spawn ~ ~ ~ loot cpp:all_in_one_machine
execute as @s[tag=cpp_trade_machine] run loot spawn ~ ~ ~ loot cpp:trade_machine
execute as @s[tag=cpp_mob_projector] run loot spawn ~ ~ ~ loot cpp:mob_projector
execute as @s[tag=cpp_golden_anvil] run loot spawn ~ ~ ~ loot cpp:golden_anvil
execute as @s[tag=cpp_item_processer] run loot spawn ~ ~ ~ loot cpp:item_processer
execute as @s[tag=cpp_bookshelf] run loot spawn ~ ~ ~ loot cpp:empty_bookshelf
execute as @s[tag=cpp_dustbin] run loot spawn ~ ~ ~ loot cpp:dustbin

kill @s
