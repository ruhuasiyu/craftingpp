tag @e[type=item,distance=..5] add cpp_front_item
execute positioned ^ ^ ^5 run tag @e[type=item,distance=5..,tag=cpp_front_item] remove cpp_front_item
execute positioned ^ ^100 ^ run tag @e[type=item,distance=..99.5,tag=cpp_front_item] remove cpp_front_item
execute positioned ^ ^-100 ^ run tag @e[type=item,distance=..99.5,tag=cpp_front_item] remove cpp_front_item
execute positioned ^100 ^ ^ run tag @e[type=item,distance=..99.5,tag=cpp_front_item] remove cpp_front_item
execute positioned ^-100 ^ ^ run tag @e[type=item,distance=..99.5,tag=cpp_front_item] remove cpp_front_item
