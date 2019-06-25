execute if entity @s[distance=..6] unless block ~ ~ ~ #cpp:dirt positioned ^ ^ ^0.005 anchored feet run function cpp:use_carrot_on_a_stick/elements/orange
execute if entity @s[distance=..6] if block ~ ~ ~ #cpp:dirt run function cpp:use_carrot_on_a_stick/elements/orange
