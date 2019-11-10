execute if entity @s[distance=..6] if block ^ ^ ^ #cpp:liquid run function cpp:tool/infinite_bucket_done
execute if entity @s[distance=..6] unless block ^ ^ ^ #cpp:liquid positioned ^ ^ ^0.005 run function cpp:tool/infinite_bucket
