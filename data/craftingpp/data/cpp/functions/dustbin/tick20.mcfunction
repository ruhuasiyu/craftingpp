function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] run data remove block ~ ~ ~ Items
