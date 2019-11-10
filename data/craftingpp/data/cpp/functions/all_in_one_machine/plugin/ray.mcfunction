execute as @s[distance=..6] if block ~ ~ ~ barrel align xyz positioned ~0.5 ~ ~0.5 run function cpp:all_in_one_machine/plugin/type
execute as @s[distance=..6] unless block ~ ~ ~ barrel positioned ^ ^ ^0.005 anchored feet run function cpp:all_in_one_machine/plugin/ray
