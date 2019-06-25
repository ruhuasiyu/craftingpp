execute unless entity @e[tag=cpp_sign,distance=..0.1] run function cpp:block/sign_done
execute if entity @e[tag=cpp_sign,distance=..0.1] positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:standing_signs unless entity @e[tag=cpp_sign,distance=..0.1] run function cpp:block/sign_done
execute if entity @e[tag=cpp_sign,distance=..0.1] positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:standing_signs unless entity @e[tag=cpp_sign,distance=..0.1] run function cpp:block/sign_done
execute if entity @e[tag=cpp_sign,distance=..0.1] positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:standing_signs unless entity @e[tag=cpp_sign,distance=..0.1] run function cpp:block/sign_done
execute if entity @e[tag=cpp_sign,distance=..0.1] positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:standing_signs unless entity @e[tag=cpp_sign,distance=..0.1] run function cpp:block/sign_done
execute if entity @e[tag=cpp_sign,distance=..0.1] positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:standing_signs unless entity @e[tag=cpp_sign,distance=..0.1] run function cpp:block/sign_done
execute if entity @e[tag=cpp_sign,distance=..0.1] positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:standing_signs unless entity @e[tag=cpp_sign,distance=..0.1] run function cpp:block/sign_done
