execute as @e[type=armor_stand,tag=cpp_beacon_enhancer] at @s unless predicate cpp:redstone_power if block ~ ~-1 ~ beacon run function cpp:beacon_enhancer/type
schedule function cpp:tick200 200t
