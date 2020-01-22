function cpp:check_power
execute as @s[tag=cpp_redstone_powered] if data block ~ ~ ~ Items[0] positioned ~ ~255 ~ run function cpp:chest_dropper/check
