execute as @s[tag=cpp_ore_leaves] run function cpp:plants/leaves/ore
execute as @s[tag=cpp_fruit_leaves] if block ~ ~-1 ~ #cpp:air run function cpp:plants/leaves/fruit
scoreboard players set #leaves_rts cppValue 0
