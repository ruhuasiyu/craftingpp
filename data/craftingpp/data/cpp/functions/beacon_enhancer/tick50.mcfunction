function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] if block ~ ~-1 ~ beacon run function cpp:beacon_enhancer/type