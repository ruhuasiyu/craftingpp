execute unless entity @s[distance=..6] run function cpp:tool/santa_gift_done
execute if entity @s[distance=..6] unless block ^ ^ ^ #cpp:fluid positioned ^ ^ ^-0.01 anchored feet run function cpp:tool/santa_gift_done
execute if entity @s[distance=..6] if block ^ ^ ^ #cpp:fluid positioned ^ ^ ^0.005 anchored feet run function cpp:tool/santa_gift
