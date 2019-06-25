tellraw @s {"translate":"info.cpp.magic.thunder2"}
execute as @s[scores={cppWandLevel=1..}] run effect give @s instant_health
execute as @s[scores={cppWandLevel=2..}] run effect give @s instant_health 1 1
execute as @s[scores={cppWandLevel=3..}] run effect give @s instant_health 1 2
