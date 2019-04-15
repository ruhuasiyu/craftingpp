tellraw @s {"translate":"info.cpp.magic.fire2"}
execute as @s[scores={cppWandLevel=1..}] at @e[distance=..3,tag=cpp_furnace] run function cpp:magic/fire2_fuel
execute as @s[scores={cppWandLevel=2..}] at @e[distance=..7,tag=cpp_furnace] run function cpp:magic/fire2_fuel
execute as @s[scores={cppWandLevel=3..}] at @e[distance=..11,tag=cpp_furnace] run function cpp:magic/fire2_fuel
