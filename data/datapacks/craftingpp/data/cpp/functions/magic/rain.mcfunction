tellraw @s {"translate":"info.cpp.magic.rain"}
execute as @s[scores={cppWandLevel=1}] run weather rain 6000
execute as @s[scores={cppWandLevel=2}] run weather rain 1200
execute as @s[scores={cppWandLevel=3}] run weather thunder 1800
