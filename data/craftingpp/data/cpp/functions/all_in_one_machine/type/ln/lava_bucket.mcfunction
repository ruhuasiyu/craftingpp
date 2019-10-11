execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{tag:{id:"cpp:cobblestone_plugin"}}]} run function cpp:all_in_one_machine/type/ln/cobblestone
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{tag:{id:"cpp:stone_plugin"}}]} run function cpp:all_in_one_machine/type/ln/stone
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{tag:{id:"cpp:netherrack_plugin"}}]} run function cpp:all_in_one_machine/type/ln/netherrack
execute as @s[tag=!cpp_machine_work] if block ~ ~ ~ minecraft:barrel{Items:[{tag:{id:"cpp:end_stone_plugin"}}]} run function cpp:all_in_one_machine/type/ln/end_stone
execute as @s[tag=!cpp_machine_work,scores={cppStoredxp=4..}] if block ~ ~ ~ minecraft:barrel{Items:[{tag:{id:"cpp:obsidian_plugin"}}]} run function cpp:all_in_one_machine/type/ln/obsidian
