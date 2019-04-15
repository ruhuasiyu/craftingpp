execute if entity @s[distance=..6] unless block ~ ~ ~ #cpp:fluid run advancement grant @s only cpp:elements
execute if entity @s[distance=..6] unless block ~ ~ ~ #cpp:fluid positioned ^ ^ ^-0.005 anchored feet run setblock ~ ~ ~ water destroy
execute if entity @s[distance=..6] if block ~ ~ ~ #cpp:fluid positioned ^ ^ ^0.005 anchored feet run function cpp:use_carrot_on_a_stick/elements/green
