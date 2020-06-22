execute if block ~ ~-1 ~ beacon{Levels:1} run function cpp:beacon_enhancer/level1
execute if block ~ ~-1 ~ beacon{Levels:2} run function cpp:beacon_enhancer/level2
execute if block ~ ~-1 ~ beacon{Levels:3} run function cpp:beacon_enhancer/level3
execute if block ~ ~-1 ~ beacon{Levels:4} as @s[tag=!cpp_beacon_enchancer_super] run function cpp:beacon_enhancer/level4
execute if block ~ ~-1 ~ beacon{Levels:4} as @s[tag=cpp_beacon_enchancer_super] run function cpp:beacon_enhancer/super