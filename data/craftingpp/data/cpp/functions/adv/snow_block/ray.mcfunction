execute if block ^ ^ ^ minecraft:snow_block align xyz run function cpp:adv/snow_block/done
execute if entity @s[distance=..6] unless block ^ ^ ^ minecraft:snow_block positioned ^ ^ ^0.005 anchored feet run function cpp:adv/snow_block/ray
