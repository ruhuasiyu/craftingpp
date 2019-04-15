execute as @s[distance=..6] if block ~ ~ ~ #cpp:sort_container run function cpp:sort_chest/type
execute as @s[distance=..6] unless block ~ ~ ~ #cpp:sort_container positioned ^ ^ ^0.005 anchored feet run function cpp:sort_chest/ray
