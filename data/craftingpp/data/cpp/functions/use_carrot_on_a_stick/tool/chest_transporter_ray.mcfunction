execute if entity @s[distance=..6] unless block ~ ~ ~ chest positioned ^ ^ ^0.005 anchored feet run function cpp:use_carrot_on_a_stick/tool/chest_transporter_ray
execute if entity @s[distance=..6] if block ~ ~ ~ chest run function cpp:use_carrot_on_a_stick/tool/chest_transporter
