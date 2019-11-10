function cpp:check_power
execute as @s[tag=!cpp_redstone_powered] if data block ~ ~ ~ Items[0] run function cpp:chest_dropper/done
